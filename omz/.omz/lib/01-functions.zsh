function zsh_stats() {
  fc -l 1 \
    | awk '{ CMD[$2]++; count++; } END { for (a in CMD) print CMD[a] " " CMD[a]*100/count "% " a }' \
    | grep -v "./" | sort -nr | head -20 | column -c3 -s " " -t | nl
  }

function takedir() {
  mkdir -p $@ && cd ${@:$#}
}

function open_command() {
  local open_cmd

  # define the open command
  # ???
  case "$OSTYPE" in
    darwin*)  open_cmd='open' ;;
    cygwin*)  open_cmd='cygstart' ;;
    linux*)   [[ "$(uname -r)" != *icrosoft* ]] && open_cmd='nohup xdg-open' || {
      open_cmd='cmd.exe /c start ""'
          [[ -e "$1" ]] && { 1="$(wslpath -w "${1:a}")" || return 1 }
        } ;;
    msys*)    open_cmd='start ""' ;;
    *)        echo "Platform $OSTYPE not supported"
      return 1
      ;;
  esac

  ${=open_cmd} "$@" &>/dev/null
}

function takeurl() {
  # 创建临时文件 ？YES
  data=$(mktemp)
  curl -L $1 > $data
  tar xf $data
  thedir=$(tar tf $data | head -1)
  rm $data
  cd $thedir
}

function takegit() {
  git clone --depth 1 $1
  cd $(basename ${1%%.git})
}

function take() {
  if [[ $1 =~ ^(https?|ftp).*\.tar\.(gz|bz2|xz)$ ]]; then
    takeurl $1
  elif [[ $1 =~ ^([A-Za-z0-9]\+@|https?|git|ssh|ftps?|rsync).*\.git/?$ ]]; then
    takegit $1
  else
    takedir $1
  fi
}

#
# Get the value of an alias.
#
# Arguments:
#    1. alias - The alias to get its value from
# STDOUT:
#    The value of alias $1 (if it has one).
# Return value:
#    0 if the alias was found,
#    1 if it does not exist
#
function alias_value() {
  (( $+aliases[$1] )) && echo $aliases[$1]
}

#
# Try to get the value of an alias,
# otherwise return the input.
#
# Arguments:
#    1. alias - The alias to get its value from
# STDOUT:
#    The value of alias $1, or $1 if there is no alias $1.
# Return value:
#    Always 0
#
function try_alias_value() {
  alias_value "$1" || echo "$1"
}

#
# Set variable "$1" to default value "$2" if "$1" is not yet defined.
#
# Arguments:
#    1. name - The variable to set
#    2. val  - The default value
# Return value:
#    0 if the variable exists, 3 if it was set
#
function default() {
  (( $+parameters[$1] )) && return 0
  typeset -g "$1"="$2"   && return 3
}

#
# Set environment variable "$1" to default value "$2" if "$1" is not yet defined.
#
# Arguments:
#    1. name - The env variable to set
#    2. val  - The default value
# Return value:
#    0 if the env variable exists, 3 if it was set
#
function env_default() {
  [[ ${parameters[$1]} = *-export* ]] && return 0
  export "$1=$2" && return 3
}


# Required for $langinfo
zmodload zsh/langinfo

# URL-encode a string
#
# Encodes a string using RFC 2396 URL-encoding (%-escaped).
# See: https://www.ietf.org/rfc/rfc2396.txt
#
# By default, reserved characters and unreserved "mark" characters are
# not escaped by this function. This allows the common usage of passing
# an entire URL in, and encoding just special characters in it, with
# the expectation that reserved and mark characters are used appropriately.
# The -r and -m options turn on escaping of the reserved and mark characters,
# respectively, which allows arbitrary strings to be fully escaped for
# embedding inside URLs, where reserved characters might be misinterpreted.
#
# Prints the encoded string on stdout.
# Returns nonzero if encoding failed.
#
# Usage:
#  omz_urlencode [-r] [-m] [-P] <string>
#
#    -r causes reserved characters (;/?:@&=+$,) to be escaped
#
#    -m causes "mark" characters (_.!~*''()-) to be escaped
#
#    -P causes spaces to be encoded as '%20' instead of '+'
function omz_urlencode() {
  emulate -L zsh
  local -a opts
  zparseopts -D -E -a opts r m P

  local in_str=$1
  local url_str=""
  local spaces_as_plus
  if [[ -z $opts[(r)-P] ]]; then spaces_as_plus=1; fi
  local str="$in_str"

  # URLs must use UTF-8 encoding; convert str to UTF-8 if required
  local encoding=$langinfo[CODESET]
  local safe_encodings
  safe_encodings=(UTF-8 utf8 US-ASCII)
  if [[ -z ${safe_encodings[(r)$encoding]} ]]; then
    str=$(echo -E "$str" | iconv -f $encoding -t UTF-8)
    if [[ $? != 0 ]]; then
      echo "Error converting string from $encoding to UTF-8" >&2
      return 1
    fi
  fi

  # Use LC_CTYPE=C to process text byte-by-byte
  local i byte ord LC_ALL=C
  export LC_ALL
  local reserved=';/?:@&=+$,'
  local mark='_.!~*''()-'
  local dont_escape="[A-Za-z0-9"
  if [[ -z $opts[(r)-r] ]]; then
    dont_escape+=$reserved
  fi
  # $mark must be last because of the "-"
  if [[ -z $opts[(r)-m] ]]; then
    dont_escape+=$mark
  fi
  dont_escape+="]"

  # Implemented to use a single printf call and avoid subshells in the loop,
  # for performance (primarily on Windows).
  local url_str=""
  for (( i = 1; i <= ${#str}; ++i )); do
    byte="$str[i]"
    if [[ "$byte" =~ "$dont_escape" ]]; then
      url_str+="$byte"
    else
      if [[ "$byte" == " " && -n $spaces_as_plus ]]; then
        url_str+="+"
      else
        ord=$(( [##16] #byte ))
        url_str+="%$ord"
      fi
    fi
  done
  echo -E "$url_str"
}

# URL-decode a string
#
# Decodes a RFC 2396 URL-encoded (%-escaped) string.
# This decodes the '+' and '%' escapes in the input string, and leaves
# other characters unchanged. Does not enforce that the input is a
# valid URL-encoded string. This is a convenience to allow callers to
# pass in a full URL or similar strings and decode them for human
# presentation.
#
# Outputs the encoded string on stdout.
# Returns nonzero if encoding failed.
#
# Usage:
#   omz_urldecode <urlstring>  - prints decoded string followed by a newline
function omz_urldecode {
  emulate -L zsh
  local encoded_url=$1

  # Work bytewise, since URLs escape UTF-8 octets
  local caller_encoding=$langinfo[CODESET]
  local LC_ALL=C
  export LC_ALL

  # Change + back to ' '
  local tmp=${encoded_url:gs/+/ /}
  # Protect other escapes to pass through the printf unchanged
  tmp=${tmp:gs/\\/\\\\/}
  # Handle %-escapes by turning them into `\xXX` printf escapes
  tmp=${tmp:gs/%/\\x/}
  local decoded
  eval "decoded=\$'$tmp'"

  # Now we have a UTF-8 encoded string in the variable. We need to re-encode
  # it if caller is in a non-UTF-8 locale.
  local safe_encodings
  safe_encodings=(UTF-8 utf8 US-ASCII)
  if [[ -z ${safe_encodings[(r)$caller_encoding]} ]]; then
    decoded=$(echo -E "$decoded" | iconv -f UTF-8 -t $caller_encoding)
    if [[ $? != 0 ]]; then
      echo "Error converting string from UTF-8 to $caller_encoding" >&2
      return 1
    fi
  fi

  echo -E "$decoded"
}

# =========  self add ================

# alternatively, use `npx serve, but can't speciation direction
# TODO: dependcy: ripgrep
function pym() {
  # ip is third, input ip:port in your phone's browser
  ip addr | rg inet
  python -m http.server
  #8090
  # NOTE: is different by npm install
}

# @nvm
function onvm() {
  export NVM=/usr/share/nvm
  export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
  source $NVM/init-nvm.sh
}

# @proxy
function onproxy1() {
   export https_proxy=http://127.0.0.1:8889
   export http_proxy=http://127.0.0.1:8889
   export all_proxy=socks5://127.0.0.1:1089
   # curl cip.cc 代理后 cip.cc 访问会很慢
   # curl ip.sb
 }
alias offproxy1="unset http_proxy https_proxy all_proxy && curl cip.cc"


# color
function 256color() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " \
    ${${(M)$((i%12)):#3}:+$'\n'}; done
  }

function nvm_prompt_info() {
  which nvm &>/dev/null || return
  local nvm_prompt=${$(nvm current)#v}
  echo "${ZSH_THEME_NVM_PROMPT_PREFIX}${nvm_prompt}${ZSH_THEME_NVM_PROMPT_SUFFIX}"
}

zmodload zsh/zprof

# TMUX
function tmuxa() {
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    # ???
    test -z "$TMUX" && { tmux attach || tmux new-session; }
fi
}

# how to better these cd (all in one)
function cdt() {
  local _TMP=~/temp
  [[ ! -d "$_TMP" ]] && { mkdir "$_TMP"; echo "creat $_TMP dir"}
  cd ${_TMP}
}

function cdr() {
  # todo rename
  local _TMP=~/REPOS
  [[ ! -d "$_TMP" ]] && { mkdir "$_TMP"; echo "creat $_TMP dir"}
  cd ${_TMP}
}

## todo fix for multi terminal
#function ssh() {
  #(ps auxce | grep kitty) > /dev/null
  #if [ $(echo $?) -eq 0 ]; then
    #echo "success"
    ##alias ssh="kitty +kitten ssh"
    #ssh
  #else
    #echo "vanilla"
    ##ssh
  #fi
#}
#

# TODO
# search globally in custom folders,
#function rgf() {
  ## all notes
  #local searchDir=(
  ## all notes
    #~/dotfiles/notes/
    ## omz
    #~/.omz/lib/
  #)
  #rg $1 ${searchDir}
#}

# fastly run go file
#function testgo() {
    #local CURRENT_DIR=`pwd`
    #OLD_GO_PATH="$GOPATH"  #例如: /usr/local/go
    #OLD_GO_BIN="$GOBIN"    #例如: /usr/local/go/bin

    #export GOPATH="$CURRENT_DIR"
    #export GOBIN="$CURRENT_DIR/bin"

    ##指定并整理当前的源码路径
    ## deprecated: format src/* code
    #gofmt -w $1

    ##go install test_hello@latest
    ## TODO: why need export
    #go run $1

    #export GOPATH="$OLD_GO_PATH"
    #export GOBIN="$OLD_GO_BIN"
#}

# TODO: how to limit one parameter at least
# how to add one parameter for complete
# better redirection
# disable: vim
# enable: kooha goland
function on() {
  #https://www.ruanyifeng.com/blog/2019/12/mktemp.html
  #while getopts "-h:--help:" arg
  #do
  #case "$arg" in
  #-h)
  #echo "-a表示all全部。。。参数值为； $OPTARG"
  #;;
#?)dotfiles
  #echo "没有找到这条命令。。。。"
  #;;
  #esac
  #done
  #trap 'rm -rf "$RunName"' EXIT
  #nohup：when you exit your terminal(need twice quit), this job is still running
  RunName=$(mktemp -t ${1}.XXXXXX) || exit 1
  nohup ${1} >${RunName} 2>&1 &
  echo -e "\033[0;32m${1}\033[0m is runing ..."
}

#TODO:
#function reload() {
  #unfunction $1 && autoload -U $1
  #echo "Reload $1 finished!"
#}

# cd fast
#function cdf() {
  #cd $1
#}

# TODO: like fzf to filter and like insearch
#function vif() {
  #$EDITOR $1
#}

#function natapps() {
  ##natapp -authtoken=$1
  #natapp -authtoken=ca8def303fc2485c
#}


### GTD or ZTD
#function oeq() {
  #$EDITOR ${NOTES}/refrence/question.md
#}

#function oem() {
  ## BUG: wired must use slash to keep original date
  ## dt ==> draft
  ##local PREFIX=~/dotfiles/notes/draft/
  ##local TODAY="${NOTES}/daily/$(\date -I)"
  #local TODAY="${NOTES}/markdown/$(\date +"%d-%m%Y")"
  ## NOTE: catn't read environment alias
  #$EDITOR ${TODAY}.md
#}

# need a parameter
#function oedl() {
  #TODO:
  # fixed: need add last slash
  #local PREFIX=~/dotfiles/notes/draft/
  #$EDITOR + "${Notes}/daily/${1}"
#}

#function oen() {
  ##local TODAY="${NOTES}/norg/$(\date -I)"
  #local TODAY="${NOTES}/norg/$(\date +"%d-%m%Y")"
  #$EDITOR + ${TODAY}.norg
#}

# need a parameter
#function oetl() {
  #$EDITOR + "${Notes}/todo/${1}"
#}


# tiddlywiki
function two() {
  #TODO: adjsut folder
  # generial
  #nohup tiddlywiki ~/REPOS/TW --listen port=8090 > /tmp/tw.log 2>&1 &
  #(cmd)
  #setsid tiddlywiki ~/REPOS/TW --listen port=8090 > /tmp/tw.log 2>&1 &
  # NOTE: this port is node and chrome, when this node process is closed, but this browser need refresh by hand if it's
  # opened, because this port will show is assiging
  twpid=`/usr/sbin/lsof -i :8090|grep -v "PID" | awk '{print $2}'`
  if [ "$twpid" = "" ];
  then
    if [[ $# -eq 0 ]]
    then
      echo "No parameter input"
    else
      setsid tiddlywiki $1 --listen port=8090 > /tmp/tw.log 2>&1 &
      disown
      echo "$1 is running"
    fi
  else
    echo "this service(port) has opened!"
  fi
}

# TODO: how to in subprocess to resolve this path reduce double path
# special
function tw5() {
  local CURRENT_DIR=`pwd`
  local TARGET_DIR=~/REPOS/TW
  cd ${TARGET_DIR} && make
  #pm2 stop tiddlywiki
  # NOTE:
  #pm2 delete tw
  #pm2 start --name tw /usr/bin/tiddlywiki -- --listen port=8090
  make
  cd ${CURRENT_DIR}
  nohup google-chrome-stable http://127.0.0.1:8090 >/tmp/google.log 2>&1 &
}

function twc() {
  #NOTE: must have comma to disable show error in zsh startup `then` should put single line
  if [[ $# -gt 0  ]];
  then
    if [ ! -d "$1" ];
    then
      tiddlywiki $1 --init server
      nohup tiddlywiki $1 --listen port=8081 >/tmp/testtw.log 2>&1&
      nohup google-chrome-stable http://127.0.0.1:8081 >/tmp/google.log 2>&1 &
    else
      echo "This folder has exits!!!"
    fi
  else
    echo "ERROR: No parameter input!!!"
  fi
}

# some unused config
#
# @spacemacs
function _spacemacs() {
  # https://www.emacswiki.org/emacs/EmacsClient
  export ALTERNATE_EDITOR=""
  export EDITOR="emacsclient -t "                  # $EDITOR opens in terminal
  export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
  # Note: emacs is restart emacs every times
  # gui emacs
  # emacsclient -nw（连接到现有的守护进程）
  # \emacs -q # original emacs
  # alias emacs="emacs &"
  alias eg="emacsclient  -c -q -n"
  # tui emacs
  alias et="emacsclient -t"
}


# git config --global url.https://github.com.cnpmjs.org/.insteadof https://github.com/
#
#
# Key: alt + q
# bindkey "\eq" push-line-or-edit



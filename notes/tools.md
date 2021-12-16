## Ranger
r # choose open file's tool.

[ or ] # choose parent folder.

zh or ctrl h  to show hidden files.

cw # rename file_name. or use 'a' 'A'

i  # preview like vim but not vim for work.

v  or space  # select file

w # task manager.

always look for github_wikis.

tsz -i file_name.

cw # rename

S   //进入指定的文件夹，进入一个新的终端，退出当前的终端，会再次回到ranger中

/ #search

gg G # same vim

yy dd pp # 复制剪切 粘贴

f # 查找

A # 在当前的基础上进行重命名

I  # 同上   same vim

dD   # 彻底删除

  on/ob   根据文件名进行排序(natural/basename)
  oc      根据改变时间进行排序 (Change Time 文件的权限组别和文件自身数据被修改的时间)
  os      根据文件大小进行排序(Size)
ot      根据后缀名进行排序 (Type)

  oa      根据访问时间进行排序 (Access Time 访问文件自身数据的时间)
om      根据修改进行排序 (Modify time 文件自身内容被修改的时间)

  zp   # 预览代码

  zP # 打开目录预览

  cat file_name | tsz

  cd ~/.config/ranger/rifle.conf
  export RANGER_LOAD_DEFAULT_RC=FALSE
  sudo pacman -S  --noconfirm libcaca highlight atool lynx w3m elinks  mediainfo   # install  depencies

#找出含有docx的一行，然后将其注释起来：
#ext docx?, has catdoc,       terminal = catdoc -- "$@" | "$PAGER"
  s # enter this shell environment.
  git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
  echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf   # add devicons

  - ranger --copy-config=all  # configure some files
  - [ranger_tutor](https://blog.csdn.net/lxyoucan/article/details/115671189)

## Tmux

mod: ctrl + a or ctrl + b
mod <nu>
mod ?
mod -  # vsplit

`prefix> C-c`表示您必须先按Ctrl+a或Ctrl+，b再按Ctrl+c

prefix C c  # 新建会话  creat

prefix s   # 选择窗口 select    安装x进行关闭窗口
prefix ?   # show all shortkeys
prefix x   # 关闭整个tmux

prefix  d # 临时退出tmux   deattch

tmux  a -t  (nu)  # 连接已经存在的session  panel->window->session

tmux ls   # 列出所有的window

prefix t  # show time

prefix [   # 进入复制模式    进入可视模式    prefix ] 粘贴

q # 退出

prefix nu # 切换窗口

*  tmux  new -s daily # creat a session called daily.
*  C-b , # rename this window's name
*  C-b w # show all window
*  tmux kill-session -t session-name # kill one session
*  tmux kill-pane -t pane-name .
*  tmux a # defult to connect the first session.
*  C-b z # zoom in or reset this pane
*  C-b r # source this .tumu.conf
*  [tmux-tutor](https://louiszhai.github.io/2017/09/30/tmux/#%E4%BF%9D%E5%AD%98Tmux%E4%BC%9A%E8%AF%9D)

### Typora

* 图片路径可以选择指定路径 ./${filename}    会生成一个与md文件同名的文件夹。推荐！！！
* ### typora

CTRL shift q      #  <u>添加引用</u>  quoto
CTRL shift  i   # 添加图片
ctrl  u  #      <u>添加下滑线</u>   underline
CTRL k  # 添加超链接   hyperlink []()
ctrl  t   # 生成 表格
ctrl  b  # **加粗**
CTRL i    #  *倾斜*
alt shiift 5   # ~~添加删除线~~
* *~~ ~~* # deline

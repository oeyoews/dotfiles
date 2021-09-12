1. Q: jk is doesn't work?
   S: rm .vim/session

2. Q: 未知的模式 vim?
   A: 注意 vim：的写法在注释的时候

3. Q: markdown-preview can't open in brower?
   A: cd ~/.cache/vimfiles/.cache/vimrc/.dein/app && yarn NOTE: can't use SPClean.
   and instead it , wecan use cd ~/.cache/vimfiles/repos/github.com/iamcco/markdown-preview.nvim/app/ && yarn

4. Q: can't set lang to en_US..... for vim?
   A: sudo:   vim /etc/locale.gen and comment en_us... and  locale-gen NOTE: not write en_US.UTF-8, this will destory system language

#/usr/bin/zsh
# crontab -e 
# 0 0 */1 * * zsh ~/src/DOTFILES/SH/Dotfiles.sh
# note add zsh or bash,because this sudo 

function main() {
  cd $HOME/src/DOTFILES && git add . && git commit -m "This is a auto push for Dotfiles." && git push
  echo "Date:$(date) User:$(whoami) success for crontab (Dotfiles)" >> $HOME/src/DOTFILES/Log/crontab_for_Dotfiles.log
}

main

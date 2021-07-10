#/usr/bin/zsh
# crontab -e && echo " 0 0 */1 * * zsh $DOT/SH/Dotfiles.sh

function main() {
  cd $HOME/src/DOTFILES
  git add .
  git commit -m "This is a auto push for Dotfiles."
  git push
  echo "date:$(date) user:$(whoami) success for crontab (Dotfiles)" >> $HOME/src/DOTFILES/Log/crontab_for_Dotfiles.log
}

main

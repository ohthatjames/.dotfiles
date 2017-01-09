source ~/.dotfiles/bd.sh
source ~/.dotfiles/git.sh
source ~/.dotfiles/homebrew.sh
source ~/.dotfiles/marks.sh
source ~/.dotfiles/path.sh

if test -e `echo "~/.dotfiles/private/*.sh" | cut -d' ' -f1`
then
  for file in ~/.dotfiles/private/*.sh
  do
    source $file
  done
fi

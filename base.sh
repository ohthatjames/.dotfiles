source ~/.dotfiles/bd.sh
source ~/.dotfiles/delete_branch.sh
source ~/.dotfiles/failing_features.sh
source ~/.dotfiles/git.sh
source ~/.dotfiles/homebrew.sh
source ~/.dotfiles/marks.sh
source ~/.dotfiles/path.sh
source ~/.dotfiles/ps1.sh
source ~/.dotfiles/rails.sh
source ~/.dotfiles/ruby.sh
source ~/.dotfiles/rvm.sh

if test -e `echo "~/.dotfiles/private/*.sh" | cut -d' ' -f1`
then
  for file in ~/.dotfiles/private/*.sh
  do
    source $file
  done
fi

source ~/.dotfiles/bd.sh
source ~/.dotfiles/git.sh
source ~/.dotfiles/homebrew.sh
source ~/.dotfiles/marks.sh
source ~/.dotfiles/path.sh
source ~/.dotfiles/ruby.sh

if test -e `echo "~/.dotfiles/private/*.sh" | cut -d' ' -f1`
then
  for file in ~/.dotfiles/private/*.sh
  do
    source $file
  done
fi

export BUNDLER_EDITOR=atom

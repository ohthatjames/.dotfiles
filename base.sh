source ~/.dotfiles/git.sh
source ~/.dotfiles/git_log.sh
source ~/.dotfiles/homebrew.sh
source ~/.dotfiles/path.sh
source ~/.dotfiles/ruby.sh
source ~/.dotfiles/run_features.sh

if test -e `echo "~/.dotfiles/private/*.sh" | cut -d' ' -f1`
then
  for file in ~/.dotfiles/private/*.sh
  do
    source $file
  done
fi

export BUNDLER_EDITOR=code

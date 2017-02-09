
features() {
  if [ -z "$1" ]
  then
    echo "No argument supplied"
    return
  fi
  spring rspec "spec/features/$1"
}

_features() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$( ls spec/features )" -- $cur) )
}

complete -F _features features

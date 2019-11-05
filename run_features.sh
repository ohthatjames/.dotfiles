
features() {
  if [ -z "$1" ]
  then
    echo "No argument supplied"
    return
  fi
  local file_name=$(echo $1 | sed -e 's/^spec\/features\///g')
  spring rspec "spec/features/$file_name"
}

_features() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$( find spec/features | sed -n 's|^spec/features/||p' )" -- $cur) )
}

complete -F _features features

function bd () {
  OLDPWD=`pwd`
  NEWPWD=`echo $OLDPWD | sed 's|\(.*/'$1'[^/]*/\).*|\1|'`
  index=`echo $NEWPWD | awk '{ print index($1,"/'$1'"); }'`
  if [ $index -eq 0 ] ; then
    echo "No such occurrence."
  else
    echo $NEWPWD
    cd "$NEWPWD"
  fi
}

_bd_complete()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$( pwd | sed -e 's/\//\
/g' )" -- $cur) )
}
complete -F _bd_complete bd
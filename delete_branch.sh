delete_branch () {
  branch=$1
  local flag="-d"
  local djob=0
  local remote=0
  local dir=`pwd`
  for option in $*
  do
    test $option = "--force" && flag="-D"
    test $option = "--jenkins" && djob=1
  done
  git branch $flag $branch
  git push origin :$branch
  git remote prune origin
  if [ $djob = 1 ]
  then
    script/jenkins delete $branch || true
  fi
}

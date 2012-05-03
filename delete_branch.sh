delete_branch () {
  branch=$1
  local flag="-d"
  local djob=1
  local remote=0
  local dir=`pwd`
  for option in $*
  do
    test $option = "--force" && flag="-D"
    test $option = "--skip-jenkins" && djob=0
  done
  if [ $djob = 1 ]
  then
    script/jenkins delete $branch || true
  fi
  git branch $flag $branch
  git push origin :$branch
  git remote prune origin
}

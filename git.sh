# Aliases

alias branch_count="git remote prune origin && git branch -r | wc -l"

alias gd="git diff"
alias gdc="git diff --cached"
alias gdci="git diff --cached -i"
alias gdi="git diff -i"
alias rba="git rebase --abort"
alias rbc="git rebase --continue"
alias rbi="git rebase --autosquash -i"

# Functions

branches_by_date() {
  git branch -r |grep -v HEAD | awk '{ print $1 }' |while read BRANCH; do git log -n 1 $BRANCH --pretty="format:%ai %h $BRANCH        %an <%ae> %n"; done |sort -n
}

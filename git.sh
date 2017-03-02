# Aliases

alias branch_count="git remote prune origin && git branch -r | wc -l"

alias gd="git diff"
alias gdc="git diff --cached"
alias gdci="git diff --cached -w"
alias gdi="git diff -w"
alias gl="git log"
alias gpf="git push --force-with-lease"
alias gpu="git push -u origin HEAD"

# Functions

function branches_by_date {
  git branch |grep -v HEAD | awk '{ print $1 }' |while read BRANCH; do git log -n 1 $BRANCH --pretty="format:%ai %h $BRANCH        %an <%ae> %n"; done |sort -n
}

function branch_update_against_master {
  git fetch && git rebase origin/master && git push --force-with-lease
}

function last_branches_checked_out {
  git reflog | grep 'checkout: moving' | head -10 | grep -oE '[^ ]+$'
}

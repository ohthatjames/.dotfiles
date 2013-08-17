function timer_start {
  timer=${timer:-$SECONDS}
}

function timer_stop {
  timer_show=$(($SECONDS - $timer))
  unset timer
}

trap 'timer_start' DEBUG
PROMPT_COMMAND=timer_stop

# set the PS1 variable
PS1="\e[0;37m\]\w\[\e[0;33;49m\] \e[0;36m\](last: \${timer_show}s)\[\e[0;0m\]\n$ "

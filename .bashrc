export PS1="\W> "

alias ld='echo && ls | cat && echo'
alias ll='ls -la'

kp() {
	kill $(lsof -ti tcp:$1)
}

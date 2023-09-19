export PS1="\W> "

alias ll='ls -la'

kp() {
	kill $(lsof -ti tcp:$1)
}

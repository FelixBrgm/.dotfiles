export PS1="\W> "

# M1 Mac spezific
export PATH="$PATH:/opt/homebrew/bin"
# END

alias ld='echo && ls | cat && echo'
alias ll='ls -la'

kp () { 
    kill $(lsof -ti tcp:$1)
}
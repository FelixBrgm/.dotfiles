export PS1="\W> "

# M1 Mac spezific
export PATH="$PATH:/opt/homebrew/bin"
# END

alias ld='echo && ls | cat && echo'
alias ll='ls -la'
alias code="/Applications/vscode.app/Contents/Resources/app/bin/code"
kp () { 
    kill $(lsof -ti tcp:$1)
}
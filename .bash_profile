export PS1="\W> "

# M1 Mac spezific
export PATH="$PATH:/opt/homebrew/bin"
# END

alias ll='ls -la'
alias code="/Applications/vscode.app/Contents/Resources/app/bin/code"
kp () { 
    kill $(lsof -ti tcp:$1)
}

export PATH="$HOME/.cargo/bin:$PATH"

# Removing the start message in macos
export BASH_SILENCE_DEPRECATION_WARNING=1
clear

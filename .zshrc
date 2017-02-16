if [ ! -d "$HOME/.antigen" ]; then
	git clone https://github.com/zsh-users/antigen.git ~/.antigen
fi

source "$HOME/.antigen/antigen.zsh"


antigen use oh-my-zsh
antigen bundle git
antigen bundle rsync
antigen bundle gnu-utils
antigen bundle python
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle history
# OS specific plugins
if [[ $(uname) == 'Darwin' ]]; then
    antigen bundle vasyharan/zsh-brew-services
    antigen bundle ssh-agent
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH

elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...

    if [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi

antigen-theme ys
antigen-apply

alias gtcp="git add -A && git commit -m gtcp && git push -u origin master"

alias webserver="python -m SimpleHTTPServer"

alias rmrf="rm -Rf"

alias gtree="git log --graph --decorate --all --oneline"

alias usd="diff ~/.lsusb <(lsusb)"

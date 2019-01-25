if [ ! -d "$HOME/.antigen" ]; then
	git clone https://github.com/zsh-users/antigen.git ~/.antigen
fi

source "$HOME/.antigen/antigen.zsh"

source ${0:A:h}/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    colored-man-pages
    command-not-found
    docker
    git
    gpg-agent
    gnu-utils
    history
    ssh-agent
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    zsh-users/zsh-syntax-highlighting
EOBUNDLES

antigen theme agnoster
antigen apply
alias gtcp="git add -A && git commit -m gtcp && git push -u origin master"
alias webserver="python -m SimpleHTTPServer"
alias rmrf="rm -Rf"
alias gtree="git log --graph --decorate --all --oneline"
alias usd="diff ~/.lsusb <(lsusb)"
alias weather="curl wttr.in/warsaw"
BROWSER=/usr/bin/firefox
rtfm() { help $@ || man $@ || $BROWSER "http://www.google.com/search?q=$@"; }

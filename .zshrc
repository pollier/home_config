if [ ! -d "$HOME/.oh-my-zsh" ]; then
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
  brew
  colored-man-pages
  command-not-found
  dirhistory
  docker
  git
  gnu-utils
  gpg-agent
  history
  httpie
  osx
  pip
  ssh-agent
  sublime
)

source $ZSH/oh-my-zsh.sh

alias gtcp="git add -A; git commit -m gtcp; git push"
alias webserver="python -m SimpleHTTPServer"
alias rmrf="rm -Rf"
alias gtree="git log --graph --decorate --all --oneline"
alias weather="curl wttr.in/bordeaux"

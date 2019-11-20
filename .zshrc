if [ ! -d "$HOME/.oh-my-zsh" ]; then
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ys"

DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
  ansible
  aws
  colored-man-pages
  dirhistory
  docker
  extract
  git
  gitignore
  gnu-utils
  gpg-agent
  helm
  history
  httpie
  kubectl
  nmap
  npm
  pip
  rsync
  screen
  terraform
  ubuntu
  yarn
)

source $ZSH/oh-my-zsh.sh

alias gtcp="git add -A; git commit -m gtcp; git push"
alias webserver="python -m SimpleHTTPServer"
alias rmrf="rm -Rf"
alias gtree="git log --graph --decorate --all --oneline"
alias weather="curl wttr.in"

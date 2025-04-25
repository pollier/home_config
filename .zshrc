# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

export ZSH="$HOME/.oh-my-zsh"
PATH="$PATH:$HOME/.local/bin"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_THEME="powerlevel10k/powerlevel10k"

HIST_STAMPS="dd/mm/yyyy"

fpath=($fpath ~/.zsh/completion)

plugins=(
  brew
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
  kubectl
  nmap
  npm
  rsync
  screen
  terraform
)

source $ZSH/oh-my-zsh.sh

alias gtcp="git add -A; git commit -m gtcp; git push"
alias gtree="git log --graph --decorate --all --oneline"
alias rmrf="rm -Rf"
alias weather="curl wttr.in"
alias "brew install"="brew install --no-quarantine"
alias "brew upgrade"="brew upgrade --no-quarantine --greedy"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

export DOCKER_BUILDKIT=1

export GITLAB_WORKFLOW_INSTANCE_URL=https://gitlab.com

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -U +X bashcompinit && bashcompinit

export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}

export EDITOR=code
export UV_LINK_MODE=copy

autoload -Uz compinit
compinit


fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select

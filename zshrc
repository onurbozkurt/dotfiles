export ZSH=/Users/onurb/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(
  rails ruby git
)

source $ZSH/oh-my-zsh.sh

setopt auto_cd
cdpath=($HOME/Projects $HOME)

alias notes="cd ~/Documents/Notes"
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

alias r="bundle exec rspec"
alias rff="bundle exec rspec --fail-fast"
eval "$(rbenv init -)"

export LESS="-SRXF"
alias v="vim"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias bashrc="vim ~/.bashrc"
alias daily='vim ~/.daily'
alias reload_zsh='source ~/.zshrc'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. $(brew --prefix)/opt/fzf/shell/key-bindings.zsh
export FZF_DEFAULT_COMMAND='fd --type f --color=never'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d . --color=never'
export FZF_DEFAULT_OPTS='
  --height 75% --multi --reverse
  --bind ctrl-f:page-down,ctrl-b:page-up
'

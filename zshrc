export ZSH=/Users/onur/.oh-my-zsh
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
eval "$(rbenv init -)"

export LESS="-SRXF"
alias v="vim"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "/home/lemon/antigen.zsh"
antigen init ~/.antigenrc

# kitty stuff
alias kssh='kitty +kitten ssh'
alias xssh='TERM=xterm ssh'
alias kclear="printf '\033[2J\033[3J\033[1;1H'"

alias l="exa --icons -glhb"
alias ls="l"
alias lse="l -aa"
alias lst="l -aTL"
alias fixpicom="pkill picom;sleep 0.1;picom --config ~/.config/picom.conf -b"

export EDITOR=nvim
export PATH=$PATH:~/.local/bin:~/.cargo/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

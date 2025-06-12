hyfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# woooooo my aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias libreo='QT_QPA_PLATFORM=xcb libreoffice'
alias mirrors='sudo reflector --verbose --country US --latest 15 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist'
alias vacuum='sudo journalctl --vacuum-time=2weeks'
alias orphans='pacman -Qtdq | sudo pacman -Rns -'
alias about='pacman -Qi'
alias pacnew='sudo pacdiff'
alias regen='sudo mkinitcpio -P'
alias clearcache='paru -Sccd'

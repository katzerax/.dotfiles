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

alias update='paru;flatpak update'
alias orphans='pacman -Qtdq | sudo pacman -Rns -'
alias mirrors='sudo reflector --verbose --country US --latest 15 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist'
alias about='pacman -Qi'
alias pacnew='sudo pacdiff'
alias clearcache='paru -Sccd'
alias regen='sudo mkinitcpio -P'
alias grubit='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# basically the same command as base
alias ls='ls -aFh --color=always'
alias grep='grep --color=auto'
# -----------------
# almost a script
alias vacuum='sudo journalctl --vacuum-time=2weeks'
# -----------------
# slightly modified commands because i forget them
alias bd='cd "$OLDPWD"'
# -----------------
# fixes/workarounds
alias libreo='QT_QPA_PLATFORM=xcb libreoffice'
# -----------------
# chmod (-R is recursively, CAUTION this can be dangerous)
alias mx='chmod a+x' # a = 'all users', x = 'executable'
alias 000='chmod -R 000' # removes read, write, execute perms for everyone
alias 644='chmod -R 644' # owner can read and rwite, group/others can read
alias 666='chmod -R 666' # everyone can read and write
alias 755='chmod -R 755' # owner can read write execute, group others can read/execute
alias 777='chmod -R 777' # everyone can read write and execute
# -----------------
# cd automatically display ls
cd ()
{
	if [ -n "$1" ]; then
		builtin cd "$@" && ls
	else
		builtin cd ~ && ls
	fi
}
# -----------------

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

#source ~/.local/share/powerbash/powerbash.bash-theme

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias discord='discord --no-sandbox'
alias libreo='QT_QPA_PLATFORM=xcb libreoffice'
alias mirrors='sudo reflector --verbose --country US --latest 15 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist'
alias vacuum='sudo journalctl --vacuum-time=2weeks'
alias orphans='pacman -Qtdq | sudo pacman -Rns -'

hyfetch

export PATH=$PATH:/home/k/.spicetify

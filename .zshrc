#/bin/sh


if command -v ruby >/dev/null ; then
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
else fi

autoload -U colors && colors
PROMPT="%B%{$fg[red]%}%c%{$reset_color%}$ "
#PROMPT="%B%{$fg[red]%}%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M%{$fg[magenta]%} %~ %{$fg[red]%}%{$reset_color%}$%b "

zshpath=$HOME/.cache/zsh

if [ ! -d $zshpath ]; then
mkdir $zshpath
else fi

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$zshpath/history

alias \
		php="php -S 127.0.0.1:8000" \
		sm="sudo make install" \
		smu="sudo make uninstall" \
		cx="chmod +x" \
		key='gpg --keyserver keyserver.ubuntu.com --recv-keys' \
		ka="killall -q" \
		sdn="sudo shutdown -h now" \
		grep="grep --color=auto" \
		ls="ls -hN --color=auto --group-directories-first"


autoload -U compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)

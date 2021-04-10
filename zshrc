# ~/.zshrc

. ~/.config/aliases

autoload -U colors && colors 

export PATH="/home/mask/pixelorama/pixelorama:/home/mask/proj/bookmarks/src/bmc:/home/mask/proj/iceSaver/src/ice:/home/mask/.emacs.d/bin:$PATH"
export TMUX=
export PROMPT="[ ( %{$fg[yellow]%}%m%{$reset_color%} ) - %{$fg[blue]%}{ %n }%{$reset_color%} - %{$fg[green]%}< %~ >%{$reset_color%} ] %{$fg[red]%}$%{$reset_color%} "
export RPROMPT="%D %*"

alias make="make -k -j4"

alias check="sudo grep Warning /var/log/rkhunter.log"

alias sdwm="doas killall Xorg; startx /usr/local/bin/dwm"

#alias bmc='/home/mask/proj/bookmarks/src/bmc'
function bmcd 
{
	for _ in {1...100}
	cd $(bmc $1)
}

# Lines configured by zsh-newuser-install
HISTFILE=/tmp/history
HISTSIZE=999999999999999
SAVEHIST=999999999999999
setopt autocd extendedglob
unsetopt beep nomatch notify
bindkey -v
zstyle :compinstall filename '/home/mask/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

date

echo "
          ________
|   /|   / ___    \\    |~~~~~|  |~~~~~|
|  / |  / /   \\    \\   |        |
| /  |  \\ \\    \\   /   |        |
|/   |   \\/     |||    |        |

NULL LEECH

"
battery
echo

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

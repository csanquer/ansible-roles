#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

source $HOME/.bash_aliases

if [ `whoami` = root ]; then
    PROMPT="%{$fg_bold[red]%}%n%{$fg_bold[white]%}@%{$fg_bold[green]%}%M%{$fg_bold[white]%}:%{$fg_bold[magenta]%}%~%{$reset_color%} \$(git_super_status)"$'\n'"%t %{$fg_bold[red]%}%#%{$reset_color%} "
else
    PROMPT="%{$fg_bold[cyan]%}%n%{$fg_bold[white]%}@%{$fg_bold[green]%}%M%{$fg_bold[white]%}:%{$fg_bold[magenta]%}%~%{$reset_color%} \$(git_super_status)"$'\n'"%t %{$fg_bold[cyan]%}%#%{$reset_color%} "
fi

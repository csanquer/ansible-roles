# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

force_color_prompt=yes

if [ "$force_color_prompt" = yes ]; then
   if [ $UID -eq 0 ]; then
       PS1='\[\033[01;31m\]\u\[\033[01;37m\]@\[\033[01;32m\]\h\[\033[01;37m\]:\[\033[01;34m\]\w\[\033[01;31m\]$\[\033[00m\] '
   else
       PS1='\[\033[01;36m\]\u\[\033[01;37m\]@\[\033[01;32m\]\h\[\033[01;37m\]\[\033[01;37m\]:\[\033[01;34m\]\w\[\033[01;36m\] \$\[\033[00m\] '
   fi
else
   PS1='\u@\h:\w\$ '
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

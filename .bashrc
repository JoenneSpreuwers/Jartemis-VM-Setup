# .bashrc
export PS1="\[\033[38;5;6m\][\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;38m\]\w\[$(tput sgr0)\]\[\033[38;5;6m\]]\[$(tput sgr0)\]"
# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
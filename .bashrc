# Bashrc Twan Driessen - Systeemprogrammeur XS4ALL Internet

shopt -s cdspell
shopt -s histappend
shopt -s checkwinsize
HISTCONTROL=ignoredups:erasedups

export LC_ALL=nl_NL.UTF-8
export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8

export VISUAL=vim
export RANGER_LOAD_DEFAULT_RC=false
export EDITOR="$VISUAL"

export LESS="-SR"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi



# Prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

green="\[\e[32m\]"
red="\[\e[31m\]"
yellow="\[\e[33m\]"
reset="\[\e[m\]"
export PS1="${green}\u@${reset}\h ${red}[$STY]${reset}${yellow}\$(parse_git_branch)${reset} \w\n${red}~<$>${reset} "



# Colors
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

LS_COLORS=$LS_COLORS:'di=0;34:fi=0;0:ln=0;94:ex=0;32' ; export LS_COLORS



# Aliases
alias ww="~/bin/screen-wotts"
alias perldork='perldoc'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

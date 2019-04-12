# Bashrc Twan Driessen - Systeemprogrammeur XS4ALL Internet

shopt -s cdspell
shopt -s histappend
shopt -s checkwinsize
HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000
HISTFILESIZE=1000

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



# Colors and prompt
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

LS_COLORS=$LS_COLORS:'di=0;34:fi=0;0:ln=0;94:ex=0;32' ; export LS_COLORS

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ ( ⎇  \1)/'
}

green="\[\e[32m\]"
red="\[\e[31m\]"
yellow="\[\e[33m\]"
cyan="\[\e[36m\]"
reset="\[\e[m\]"
if [ $STY ]; then
    screen="{$STY}"
else
    screen=""
fi

export PS1="${debian_chroot:+($debian_chroot)}${green}\u${reset}@${cyan}\h ${red}${screen}${yellow}\$(parse_git_branch)${reset} \w\n${red}</>${reset} "



# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac



# Aliases
alias ww="~/bin/screen-wotts"
alias perldork='perldoc'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5001
HISTFILESIZE=10001

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

txtred="" # Red bold 
txtpur="" # Purple bold
txtrst=""    # Tet Reset

svn_branch() {
    svn_url | sed -e 's#^'"$(svn_repository_root)"'##g' | \
        awk -v "clrp=$txtpur" -v "clrr=$txtrst" \
            '{ print clrp ":svn" $1 clrr}'
}

# вывод полного текущего пути в svn-репозитории
svn_url() {
    svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}

# вывод базового пути svn-репозитория
svn_repository_root() {
    svn info 2>/dev/null | head -n3| tail -n1 | awk '{print $3}'
}

# вывод признака наличия изменений в директории
svn_dirty() {
    [ $(svn status 2> /dev/null | grep "^M" | wc -l) != 0 ] && echo -e "*"
}



# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

CWD=/Users/tony/Work/monitorr2d2

# some more ls aliases
alias ll='ls -lFh'
alias la='ls -Alh'
alias l='ls -CFh'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias cwd='cd $CWD'
alias rl_='rm *.log'


export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export PS_USER_COLOR=$'\E[1;32m'
export PS_HOST_COLOR=$'\E[1;33m'
export PS_SYM_COLOR=$'\E[0m'

#export PATH=/Users/tony/Qt5.3.2/5.3/clang_64/bin:/Users/tony/Qt5.3.2/5.3:/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH


#. /opt/local/share/bash-completion/bash_completion

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
      . /opt/local/etc/profile.d/bash_completion.sh
fi

#if [ -f ~/config/bash/git-prompt.sh ]; then
      #source ~/configs/bash/git-prompt.sh
#      $source ~/config/bash/git-prompt.sh
#      . /opt/local/etc/profile.d/bash_completion.sh
#fi

. /opt/local/share/git/git-prompt.sh

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$(__git_ps1 " (%s)") \$ '
# PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[1;33m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


#export SKIPPER_LOG=/home/tony/log/
#export SKIPPER_CONF=/home/tony/work/dev_tony_build/conf/root.conf.xml

#export CROSS_COMPILE=arm-v5te-linux-gnueabi-
#export PATH=$PATH:/opt/OSELAS.Toolchain-1.99.3/arm-v5te-linux-gnueabi/gcc-4.3.2-glibc-2.8-binutils-2.18-kernel-2.6.27-sanitized/bin/:/home/tony/.gem/ruby/1.8/bin/


#!!!

#!!!


##
# Your previous /Users/tony/.bash_profile file was backed up as /Users/tony/.bash_profile.macports-saved_2015-05-06_at_21:11:09
##

# MacPorts Installer addition on 2015-05-06_at_21:11:09: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

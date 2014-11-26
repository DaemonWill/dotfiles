# If we are not a login shell, source /etc/profile anyway
if [ "$0" != "-bash" ] ; then
    . /etc/profile
fi

# vagrant autocomplete
if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
    source `brew --prefix`/etc/bash_completion.d/vagrant
fi

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /usr/local/Cellar/git/1.8.5.3/etc/bash_completion.d/bash_completion.sh
fi

if [ -f /opt/local/share/git-core/git-prompt.sh ]; then
    . /usr/local/Cellar/git/1.8.5.3/etc/bash_completion.d/git-prompt.sh
fi

export HISTSIZE=1000000
export HISTIGNORE="&:ls:[bf]g:exit"
export HISTCONTROL=erasedups
shopt -s histappend  # Append to, rather than overwite, to history on disk
PROMPT_COMMAND='history -a' # Write the history to disk whenever you display the prompt
export PYTHONPATH=.:/usr/local/lib/python2.7/site-packages:/Users/michael/Dropbox/projects/email_crawler:/Users/michael/Dropbox/projects/donce:$PYTHONPATH 

alias ipython='ipython --pdb'
alias qtconsole='"ipython" qtconsole --pylab=inline'
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p' # make parent directories as needed

alias less='less -R'
alias more='more -R'
 
alias ls='ls -h -G'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias svim='sudo vim'
alias h='cd'
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias cim='vim'
alias back='cd $OLDPWD'
alias root='sudo su'
alias runlevel='sudo /sbin/init'
alias grep='grep --color=auto'
alias dfh='df -h'
alias gvim='gvim -geom 84x26'
alias start='dbus-launch startx'
alias sha1='openssl sha1'

export VISUAL=emacs;
export EDITOR=emacs;


# tmuxinator stuff
source ~/.bin/tmuxinator.bash



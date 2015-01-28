# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Tell 'ls' to be colorful
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacedx
export PS1='\n\[\033[01;35m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Set locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Source 'Generic Colourizer' from brew
# source "`brew --prefix`/etc/grc.bashrc" 

# Make the `rm` command as for confirmation
alias rm='rm -i'
alias tl='tree -L 2'
alias pop='ssh lucypark@popong.com'
alias dada='ssh epark@147.46.94.182'
alias dmweb="ssh epark@dm.snu.ac.kr"
alias chrome='open -a Google\ Chrome'
alias pyserv='python -m SimpleHTTPServer'
alias filezilla='open /Applications/FileZilla.app/'
alias profile='python -m cProfile'
alias profilec='python -m cProfile --sort=cumulative'
alias ipnote='ipython notebook --pylab inline'
#alias ipython='ipython --no-confirm-exit'
alias python='time python'
alias gae='dev_appserver.py --port=8192 .'
alias gaeup='appcfg.py update .'
alias ld3py='ln -s ~/dev/pkgs/d3py-0.2.3/d3py'
alias start_mongo='mongod --fork'
alias stop_mongo='killall -SIGTERM mongod 2>/dev/null'
alias status_mongo="killall -0 mongod 2>/dev/null; if [ \$? -eq 0 ]; then echo 'started'; else echo 'stopped'; fi"
alias start_pg='pg_ctl -D /usr/local/var/postgres -l logfile start'
alias stop_pg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias status_pg='pg_ctl -D /usr/local/var/postgres status'
alias gw='open http://localhost:1234/?o=age'
alias excel='reattach-to-user-namespace open -a /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app'
alias subl='reattach-to-user-namespace subl'
alias open='reattach-to-user-namespace open'
alias gitk='reattach-to-user-namespace gitk'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias f="open ."
alias gistup="gistup --private --"
alias venv="source venv/bin/activate"
alias agi="ag --ignore-dir"
alias ports="sudo netstat -plnt"
alias duh='du -d 0 -h'
alias mvn_sources='mvn eclipse:eclipse -DdownloadSources -DdownloadJavadocs'

# Export variables
export JYTHON_HOME="/usr/local/Cellar/jython/2.5.2/libexec"
export JAVA_HOME="$(/usr/libexec/java_home)"
PATH=$PATH:$HOME/.rvm/bin                                   # For RVM scripting
PATH=$PATH:/usr/texbin                                      # For TeX
PATH=$PATH:/usr/local/texlive/2012/bin/universal-darwin     # For TeX

# SCM Breeze
[ -s "/Users/e9t/.scm_breeze/scm_breeze.sh" ] && source "/Users/e9t/.scm_breeze/scm_breeze.sh"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RBENV_ROOT=/usr/local/opt/rbenv

# Timing
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_COMMAND} ${PROMPT_TITLE}; "

# z
. /Users/e9t/bin/z/z.sh

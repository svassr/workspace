export SVN_EDITOR="vim"
# export PYTHONPATH=/Applications/MAMP/Library/bin:$PYTHONPATH 
ROOT = '~'
WORKSPACE_DIR = 'Sites'
alias ll="ls -laG"
alias sites="cd ${ROOT}/${WORKSPACE_DIR}/"
alias tail='tail grc -fn $((${LINES:-12}-2)) -s.1' #Likewise, also more responsive -f
# alias ls="BLOCK_SIZE=\'1 ls --color=auto" #enable thousands grouping and colour
# alias minicom='minicom -c on' #enable colour
# alias cal='cal -3' #show 3 months by default
# alias units='units -t' #terse mode
# alias diff='LC_ALL=C TZ=GMT0 diff -Naur' #normalise diffs for distribution
# alias lynx='lynx -force_html -width=$COLUMNS' #best settings for viewing HTML
# alias links='links -force-html' #need to enable colour in config menu manually
# alias xterm='xterm -fb "" -bg black -fg gray -fa "Sans Mono" -fs 9 +sb -sl 3000 -g 80x50+1+1'
# alias sudo='sudo env PATH=$PATH' #work around sudo built --with-secure-path (ubuntu)
# alias vim='vim -X' #don't try to contact xserver (which can hang on network issues)
# alias gdb='gdb -tui -quiet' #enable the text window interface if possible
# alias head='head -n $((${LINES:-12}-2))' #as many as possible without scrolling

alias matep="mate ${ROOT}/${WORKSPACE_DIR}/\!^"

function hgrep {
   history | grep $1 
}

function openMateProject { mate //Users//stephanevasseur//Sites//$1//DEV/; }
alias mproj="openMateProject \!*"
# alias mysql_config="/Applications/MAMP/Library/bin/mysql_config"

alias update_blackbox="rsync -urv /Users/stephanevasseur/Sites/* /Volumes/BLACKBOX/Projets/"
function ursync {
        if ($1=="BLACKBOX") then
             rsync -urv /Users/stephanevasseur/Sites/* /Volumes/BLACKBOX/Projets/;
        else
             echo $1;
             # rsync -urv /Users/stephanevasseur/Sites/* /Volumes/BLACKBOX/Projets/
        fi
}

alias dj_project = "start_django_project"
function start_django_project() { 
	sites;
	mkdir -p $1
	cd $1
	svn up
	git pull
	mate .
	bin/django syncdb;
	bin/django migrate;
	bin/django loadata page;
	bin/django runserver;
}

function setup_python_mysqldb(){
  # cd /opt/local/var/run/mysql5/
  # cd MySQL-python-1.2.3
  DIRECTORY=$1
  # python setup.py install
  # sudo port install MySQL-python
  sudo port install MySQLDb
  sudo ln -s /usr/local/mysql/bin/* /usr/bin
  cd ${DIRECTORY}
  python setup.py install
  # which mysql_config5
  sudo ln -s /Applications/MAMP/tmp/mysql/mysql.sock /opt/local/var/run/mysql5/mysql.sock
  sudo ln -s /opt/local/bin/mysql_config5 /opt/local/bin/mysql_config
  python setup.py install
  echo "tcheck mysql is running"
  sudo /opt/local/share/mysql5/mysql/mysql.server start
  sudo mysqladmin5 -u root -p ping
}
# RUBY / RAILS ENVIRONMENT

# sudo ln -s /usr/bin/gem1.8   /usr/bin/gem
# sudo ln -s /usr/bin/gem1.8.8 /usr/bin/gem


# /etc/bashrc

# System wide functions and aliases
# Environment stuff goes in /etc/profile

# are we an interactive shell?
# if [ "$PS1" ]; then
#     if [ -x /usr/bin/tput ]; then
#       if [ "x`tput kbs`" != "x" ]; then 
# 	# We can't do this with "dumb" terminal
#         stty erase `tput kbs`
#       elif [ -x /usr/bin/wc ]; then
#         if [ "`tput kbs|wc -c `" -gt 0 ]; then 
# 	# We can't do this with "dumb" terminal
#           stty erase `tput kbs`
#         fi
#       fi
#     fi
#     case $TERM in
# 	xterm*)
# 	    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
# 	    ;;
# 	*)
# 	    ;;
#     esac
#     [ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\h \W]\\$ "
#     
#     if [ "x$SHLVL" != "x1" ]; then # We're not a login shell
#         for i in /etc/profile.d/*.sh; do
# 	    if [ -x $i ]; then
# 	        . $i
# 	    fi
# 	done
#     fi
# fi



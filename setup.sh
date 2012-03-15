# aliasing
# set temporary aliases
alias 'll'='ls -lh'
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


# set permanent aliases
cp bashrc ~/.bashrc
echo source ~/.bashrc >> /private/etc/bashrc

# port
sudo port selfupdate 
port install virtualbox

# python
python easyinstall setuptools
python -c "import MySQLdb"

# ruby
git clone https://github.com/rubygems/rubygems.git /Library/ruby/rubygems
cd /Library/ruby/rubygems
ruby setup.rb
sudo gem install sass
sudo gem install compass
gem install polyglot
gem install json
gem update --system
# gem install rubygems-update
# update_rubygems

# ruby
cd /Library/
git clone git://github.com/firephp/firephp.git php/firephp

# Themes
mkdir -p Themes
cd Themes
git clone git://github.com/chriskempson/tomorrow-theme.git

cd /Fonts
http://sourceforge.net/projects/dejavu/files/dejavu/2.33/dejavu-fonts-ttf-2.33.tar.bz2
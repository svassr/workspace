# aliasing
# set temporary aliases
# ex alias 'll'='ls -lh'

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
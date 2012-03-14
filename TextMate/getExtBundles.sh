# http://svn.textmate.org/trunk/Bundles/
mkdir -p /Library/Application\ Support/TextMate/Bundles
cd /Library/Application\ Support/TextMate/Bundles
svn co "http://svn.textmate.org/trunk/Review/Bundles/GetBundles.tmbundle/"
svn co "http://svn.textmate.org/trunk/Bundles/Bundle Development.tmbundle/"
svn co "http://svn.textmate.org/trunk/Bundles/Python Django.tmbundle/"
svn co "http://svn.textmate.org/trunk/Bundles/python-django-templates.tmbundle"
svn co "http://svn.textmate.org/trunk/Bundles/PHP Smarty.tmbundle/"
svn co "http://svn.textmate.org/trunk/Bundles/SQL.tmbundle"
svn co "http://svn.textmate.org/trunk/Bundles/Gipetto-wordpress.tmbundle"
svn co "http://svn.textmate.org/trunk/Bundles/Objective-J.tmbundle"
svn co "http://svn.textmate.org/trunk/Bundles/Prototype & Script_aculo_us.tmbundle"
svn co "http://svn.textmate.org/trunk/Bundles/JavaScript jQuery.tmbundle"
svn co "http://svn.textmate.org/trunk/Bundles/JavaScript YUI.tmbundle/"
svn co "http://svn.textmate.org/trunk/Bundles/Navigation.tmbundle"
svn co "http://svn.textmate.org/trunk/Bundles/iCalendar.tmbundle"
git clone git://github.com/Gipetto/wordpress.tmbundle.git
git clone git@github.com:svassr/css3please.tmbundle.git "CSS3-Please-svnlto.tmbundle"
git clone git@github.com:svassr/CSS3-Please-TextMate-Bundle.git "CSS3-Please-filipepina.tmbundle"
git clone git://github.com/gaker/codeigniter-textmate-bundle.git "CodeIgniter.tmbundle"
git clone git://github.com/matthewlein/Ceaser-CSS-Easing-tmbundle.git "Ceaser-CSS-Easing-tmbundle"
git clone git://github.com/seaofclouds/sass-textmate-bundle.git "sass-textmate.tmbundlea"
git clone git://github.com/kuroir/SCSS.tmbundle.git
git clone https://git.gitorious.org/git-tmbundle/mainline.git Git.tmbundle

# At a later time you can update the bundles which you have installed by executing these two lines:
cd /Library/Application\ Support/TextMate/Bundles
svn up *.tmbundle
# if textmate is running
osascript -e 'tell app "TextMate" to reload bundles'

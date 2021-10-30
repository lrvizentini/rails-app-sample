sudo apt-get install -y nginx

gem install puma

homedir=/var/www/sites/blog
user=ubuntu
sudo mkdir -p $homedir


sudo chown -R $user $homedir
# mkdir -p $homedir/dev1
# mkdir -p $homedir/dev2
# mkdir -p $homedir/production

sudo apt-get install -y nginx

gem install puma

homedir=/var/www/sites/blog
sudo mkdir -p $homedir

sudo chown -R $(id -u):$(id -g) $homedir
sudo mkdir -p $homedir/dev1
sudo mkdir -p $homedir/dev2
sudo mkdir -p $homedir/production
sudo apt-get update;

sudo ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime ;
sudo apt-get install -y --no-install-recommends tzdata ;

sudo apt-get install -y --no-install-recommends git curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev libsqlite3-dev

if ! [ -a ~/.rbenv ]; 
then 
    clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
    source ~/.bash_profile

    rbenv install -v 2.7.2
    rbenv global 2.7.2
fi

sudo apt-get install -y nodejs

ruby -v

if ! [ -a ~/.gemrc ]; 
    echo "gem: --no-document" > ~/.gemrc
fi

gem install bundler
gem install rails

rbenv rehash
rails -v
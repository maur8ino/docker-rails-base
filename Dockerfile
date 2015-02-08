FROM maur8ino/rails-base:rails
MAINTAINER Mauro Verrocchio <mauroverrocchio@gmail.com>

# some gems require libraries
RUN apt-get update && apt-get install -y qt5-default libqt5webkit5-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*

# installing base gems
RUN gem install git bundler gaptool-client mailcatcher

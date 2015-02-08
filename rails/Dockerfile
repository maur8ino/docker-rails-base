# Based on https://raw.githubusercontent.com/docker-library/rails/master/Dockerfile
FROM maur8ino/rails-base:ruby
MAINTAINER Mauro Verrocchio <mauroverrocchio@gmail.com>

# see update.sh for why all "apt-get install"s have to stay as one long line
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

# see http://guides.rubyonrails.org/command_line.html#rails-dbconsole
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV RAILS_VERSION 4.0.12

RUN gem install rails --version "$RAILS_VERSION"
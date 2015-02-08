FROM maur8ino/rails-base:rails
MAINTAINER Mauro Verrocchio <mauroverrocchio@gmail.com>

# some of gem require libraries
RUN apt-get update && apt-get install -y \
    	    	qt4-qmake \
		libpng12-dev \
		procps \
		--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

# installing base gems
RUN gem install git bundler gaptool-client mailcatcher

FROM w1mvy/raspberry-ruby
MAINTAINER Jimmy Cuadra <jimmy@jimmycuadra.com>

RUN gem install bundler && mkdir /app
COPY start /start
WORKDIR /app
CMD ["/start"]

ONBUILD COPY . /app

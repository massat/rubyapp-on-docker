FROM ruby:2.4.0-alpine

RUN mkdir /app
WORKDIR /app

RUN apk add --update \
  alpine-sdk \
  mariadb-dev \
  && rm -rf /var/cache/apk/* \
  && rm -rf /usr/lib/mysqld*

ADD Gemfile /app
RUN bundle install
ADD . /app

EXPOSE 9292
ENTRYPOINT [ "bundle", "exec" ]
CMD [ "rackup", "--host", "0.0.0.0" ]

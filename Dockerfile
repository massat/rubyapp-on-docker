FROM ruby:2.4.0-alpine

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app
RUN bundle install
ADD . /app

EXPOSE 9292
ENTRYPOINT [ "bundle", "exec" ]
CMD [ "rackup", "--host", "0.0.0.0" ]

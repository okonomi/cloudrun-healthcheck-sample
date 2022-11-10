FROM ruby:3.1-alpine

WORKDIR /app

RUN apk add --no-cache build-base
COPY . .
RUN bundle install

ENV RACK_ENV=production

CMD [ "ruby", "hello.rb", "-p", "8080" ]

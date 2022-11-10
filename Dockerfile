FROM ruby:3.1-alpine

WORKDIR /app

COPY Gemfile* .
RUN bundle install
COPY . .

CMD [ "ruby", "hello.rb" ]

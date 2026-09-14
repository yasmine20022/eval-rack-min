FROM ruby:latest
WORKDIR /app
COPY . .
RUN bundle install
EXPOSE 8000
CMD bundle exec rackup -o 0.0.0.0 -p 8000

FROM ruby:3.3-slim
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y --no-install-recommends build-essential libssl-dev && rm -rf /var/lib/apt/lists/* && bundle install
EXPOSE 8000
CMD bundle exec rackup -o 0.0.0.0 -p 8000
RUN groupadd -r app && useradd -r -g app app
USER app
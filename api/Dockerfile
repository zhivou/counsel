FROM ruby:2.7.6

ENV BUNDLER_VERSION 2.4.3
ENV RAILS_VERSION '7.0.4'
ENV NODE_VERSION 18

WORKDIR /myapp

COPY Gemfile Gemfile.lock /myapp/
# Re add if needed
#COPY package.json yarn.lock /myapp/

RUN gem update --system \
    && gem install bundler -v $BUNDLER_VERSION \
    && gem install rails -v $RAILS_VERSION

RUN apt-get update && apt-get install -y \
  curl \
  build-essential \
  libpq-dev &&\
  curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y nodejs yarn python

RUN apt install -y netcat
RUN bundle update && bundle install && yarn install
RUN bundle exec rails assets:precompile


COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

## Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
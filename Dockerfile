FROM ruby:2.6.3
RUN apt-get update -q && apt-get install -y nodejs postgresql-client
RUN mkdir /mymealapp
WORKDIR /mymealapp
COPY Gemfile /mymealapp/Gemfile
COPY Gemfile.lock /mymealapp/Gemfile.lock
RUN bundle install
COPY . /mymealapp

# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000

# CMD ["rails", "server", "-b", "0.0.0.0"]
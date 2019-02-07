FROM ruby:2.3

RUN wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz \
    && tar xvJf node-v8.12.0-linux-x64.tar.xz \
    && mv node-v8.12.0-linux-x64 /opt/node \
    && ln -s /opt/node/bin/node /usr/bin/node \
    && ln -s /opt/node/bin/npm /usr/bin/npm \
    && rm node-v8.12.0-linux-x64.tar.xz

RUN gem install bundler
RUN npm install -g bower \
    && ln -s /opt/node/bin/bower /usr/bin/bower

WORKDIR /srv

COPY . /srv
RUN bundle install
RUN bower --allow-root install
RUN bundle exec compass compile

VOLUME ["/srv"]

CMD [ "bundle" ]

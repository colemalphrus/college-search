FROM ruby:3.0.0

WORKDIR /app

ENV NODE_VERSION=16.13.0
RUN apt install -y curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version

COPY Gemfile .bundler_version /app/
RUN gem install bundler:$(cat .bundler_version)
RUN gem install nokogiri --platform=ruby && bundle config set force_ruby_platform true
RUN gem install sqlite3 --platform=ruby && bundle config set force_ruby_platform true
RUN bundle install

COPY . .

RUN npm i && npm run build


#EXPOSE 80
#CMD ["rails", "server", "-p", "80", "-b", "0.0.0.0"]

RUN echo k8s
EXPOSE 80
RUN DB_ADAPTER=nulldb /app/bin/bundle
RUN chmod +x /app/bin/start-pod.sh
CMD /app/bin/start-pod.sh
FROM nginx

WORKDIR /app

RUN apt-get update && \
    apt-get install gnupg2 -y && \
    apt-get install apt-transport-https -y && \
    apt-get install curl -y

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get install -y nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

COPY . .

RUN yarn run build

EXPOSE 8000

CMD ["bash", "/app/deploy/run.sh"]

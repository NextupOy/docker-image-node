FROM node:12.18.3
RUN  apt-get update \
     && apt-get install -y wget --no-install-recommends \
     && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
     && apt-get update \
     && sh -c 'echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list' \
     && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
     && apt update \
     && apt install yarn \
     && rm -rf /var/lib/apt/lists/*

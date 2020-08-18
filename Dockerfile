FROM node:12.18.3
RUN  apt-get update \
     && apt-get install -y wget --no-install-recommends \
     && apt update \
     && apt install yarn \
     && rm -rf /var/lib/apt/lists/*

FROM node:19.2.0-slim

WORKDIR /app

RUN groupadd -r user && useradd -s /bin/bash -m -r -g user user \
  && npm install -g npm \
  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -qy \
  git \
  && rm -rf /var/lib/apt/lists/*

USER user

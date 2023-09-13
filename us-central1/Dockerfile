FROM node:18-bullseye-slim AS base

WORKDIR /root

COPY ./npmrc /usr/local/etc/npmrc
COPY ./run_npm.sh /usr/local/bin/run_npm
RUN chmod +x /usr/local/bin/run_npm

RUN apt-get update && apt-get install -y curl jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN npm i -g google-artifactregistry-auth

RUN npm config -g set @tw:registry https://us-central1-npm.pkg.dev/shofifi/npm-packages/

ENV NPM_AUTH="artifactregistry-auth --repo-config /usr/local/etc/npmrc"


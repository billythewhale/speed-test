FROM node:18-bullseye-slim AS base

WORKDIR /root

COPY ./npmrc /usr/local/etc/npmrc

RUN apt-get update && apt-get install -y curl jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN npm i -g google-artifactregistry-auth

RUN npm config -g set @tw:registry https://us-npm.pkg.dev/shofifi/npm-packages/

ENV NPM_AUTH="artifactregistry-auth --repo-config /usr/local/etc/npmrc"


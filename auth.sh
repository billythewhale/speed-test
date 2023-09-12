#!/bin/bash

TOKEN=$(gcloud auth print-access-token)

echo "@tw:registry=https://us-central1-npm.pkg.dev/shofifi/npm-packages/" > ./us-central1/npmrc
echo "@tw:registry=https://us-npm.pkg.dev/shofifi/npm-packages/" > ./us/npmrc

echo "//us-central1-npm.pkg.dev/shofifi/npm-packages/:_authToken=$TOKEN" >> ./us-central1/npmrc
echo "//us-npm.pkg.dev/shofifi/npm-packages/:_authToken=$TOKEN" >> ./us/npmrc

#!/bin/bash

echo "Getting started"

# move to directory
cd ./docs
# Bundle docs into zero-dependency HTML file
npx @redocly/cli build-docs ./openapi.yaml --output ./public/index.html && \
# Add favicon
sed -i '7 i \ \ <link rel="icon" type="image/png" href="images/favicon.png"/>' index.html && \
echo -e "\nDone!"
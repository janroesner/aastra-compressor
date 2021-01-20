FROM node:15.5.1-alpine3.10

RUN yarn add uglify-js
RUN ln -s /node_modules/.bin/uglifyjs /usr/local/bin/uglifyjs
ADD compress.sh /

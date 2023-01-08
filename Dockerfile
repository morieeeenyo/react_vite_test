FROM node:18.4.0-alpine

RUN apk update && \
  apk upgrade && \
  apk add --no-cache vim yarn bash

COPY ./ /react_test_app/
WORKDIR /react_test_app
RUN yarn install
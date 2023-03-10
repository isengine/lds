FROM node:lts-alpine

WORKDIR /var/www
RUN apk update && apk add bash
COPY package*.json ./
RUN yarn
RUN yarn global add @quasar/cli
COPY . .
EXPOSE 8080

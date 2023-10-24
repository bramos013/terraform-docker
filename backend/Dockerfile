FROM node:18-alpine as build
LABEL authors="SeiLinux IT Solutions"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

ENTRYPOINT [ "node", "index.js" ]

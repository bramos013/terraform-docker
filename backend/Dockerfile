FROM node:18-alpine3.18
LABEL authors="SeiLinux IT Solutions"

WORKDIR /usr/src/app

COPY . ./

RUN npm install

ENTRYPOINT ["node", "index.js"]
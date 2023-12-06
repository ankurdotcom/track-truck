FROM node:21-alpine3.17

WORKDIR /home/app

COPY package.json ./

RUN npm install --legacy-peer-deps

COPY ./src ./src
COPY ./public ./public

RUN npm run build
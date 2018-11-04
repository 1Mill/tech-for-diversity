FROM node:10-alpine

RUN apk update

RUN npm install -g yarn@1.10

RUN mkdir /app
WORKDIR /app

COPY package.json *yarn* ./
RUN yarn install

COPY . .

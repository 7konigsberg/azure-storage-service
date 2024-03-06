FROM node:20.11.0-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN NPM ci --omit=dev
COPY ./src ./src


CMD npm start
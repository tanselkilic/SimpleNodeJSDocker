FROM node:latest

MAINTAINER tanselkilic@gmail.com

RUN mkdir -p /src/nodeapp
WORKDIR /src/nodeapp

COPY package.json /src/nodeapp
RUN npm install
COPY . /src/nodeapp

EXPOSE 8182
CMD ["node", "server.js"]
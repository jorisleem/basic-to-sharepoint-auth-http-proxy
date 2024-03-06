FROM node:20-alpine
MAINTAINER Joris
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY . .
ENV  NODE_ENV production
EXPOSE 3000
CMD [ "node", "lib/server.js" ]

FROM node:20-alpine
MAINTAINER Joris
WORKDIR /usr/src/app
RUN npm install forever -g
COPY package*.json ./
RUN npm install --production
COPY . .
ENV  NODE_ENV production
EXPOSE 3000
CMD [ "forever", "--minUptime", "1000", "--spinSleepTime", "1000", "lib/server.js" ]

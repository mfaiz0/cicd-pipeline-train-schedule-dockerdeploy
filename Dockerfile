FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm --proxy http://mohammad.x.faiz:Sp1d3rman@qproxy.qdx.com:9090 --without-ssl --insecure -g install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]

FROM node:10-alpine

RUN mkdir -p /src

ADD package.json /src/package.json

WORKDIR /src

RUN npm install --silent

ADD . /src

RUN npm run build

CMD [ "npm" , "start"]
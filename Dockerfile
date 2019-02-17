FROM node:10-alpine

COPY package.json /helloapp/package.json
COPY pages/ /helloapp/pages

WORKDIR /helloapp

RUN yarn install
RUN yarn build

CMD ["yarn", "start"]

EXPOSE 3000


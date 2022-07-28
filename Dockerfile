# --------------> The build image
FROM node:latest AS build
WORKDIR /usr/src/app
COPY . /usr/src/app/
RUN yarn global add yarn
RUN yarn install

ENV NODE_ENV production

EXPOSE 8080

CMD ["yarn", "start"]

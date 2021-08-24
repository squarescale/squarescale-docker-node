FROM node:14.17.5-alpine3.13

RUN apk update && apk upgrade && apk add git

FROM node:14-alpine

COPY gitconfig /root/.gitconfig
COPY sshconfig /root/.ssh/config

RUN apk update && apk upgrade && apk add git openssh-client
RUN ssh-keyscan github.com >> ~/.ssh/known_hosts

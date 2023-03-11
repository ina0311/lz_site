FROM node:18.14.2-alpine

RUN mkdir src

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    HOST=0.0.0.0

RUN apk update && \
    apk upgrade && \
    apk add git && \
    yarn global add nuxi nuxt3

COPY package*.json ./
RUN yarn install

COPY . ./

EXPOSE 3000
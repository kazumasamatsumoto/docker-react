FROM node:alpine
EXPOSE 8081

RUN \
  apk add --no-cache python make g++ && \
  apk add vips-dev fftw-dev --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community --repository http://dl-3.alpinelinux.org/alpine/edge/main && \
  rm -fR /var/cache/apk/*

RUN apk add git

WORKDIR /usr/src
RUN npm install && npm cache clean --force
CMD ["/bin/sh"]
FROM alpine:3.3

RUN apk add --update nginx

ENTRYPOINT ["nginx"]

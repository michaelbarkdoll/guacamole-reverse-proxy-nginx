FROM nginx:1.15.12

COPY nginx.conf /etc/nginx/nginx.conf

RUN apk update && apk add bash

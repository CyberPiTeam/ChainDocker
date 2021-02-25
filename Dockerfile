FROM alpine:3.12.2

RUN apk update

RUN apk add nginx

RUN mkdir -p /run/nginx

RUN mkdir -p /var/www/html

COPY default.conf /etc/nginx/conf.d/

WORKDIR /var/www/html/

COPY init.sh .

RUN ./init.sh

RUN rm init.sh

EXPOSE 80

CMD nginx && while true; do sleep 12 ; done


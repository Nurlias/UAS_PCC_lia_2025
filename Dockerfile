FROM nginx:alpine

LABEL maintainer="NURLIAS" \
      email="iiishjj72@gmail.com" \
      version="1.0"
 

RUN apk update && apk add --no-cache apache2


RUN mkdir -p /var/www/localhost/htdocs

COPY index.html /usr/share/nginx/html/index.html

COPY assets/ /usr/share/nginx/html/assets/
COPY images/ /usr/share/nginx/html/images/


EXPOSE 8080

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

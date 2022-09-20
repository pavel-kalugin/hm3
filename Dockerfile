# Version: 0.0.1
FROM ubuntu:22.04
MAINTAINER Pavel Kalugin <teamakalugin@gmail.com>
RUN apt-get update && apt install -y nginx
RUN echo '<h1>Hello World!</h1>' \
        >/var/www/html/index.nginx-debian.html
EXPOSE 80
ENTRYPOINT /usr/sbin/service nginx start && /bin/bash

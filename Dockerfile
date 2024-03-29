FROM alpine

RUN  apk upgrade -U -a && apk add openrc && apk add apache2  

ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

LABEL Description="Webserver"

VOLUME /var/www/html

EXPOSE 80



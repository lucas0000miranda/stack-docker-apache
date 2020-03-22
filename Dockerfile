FROM debian

RUN apt-get update && apt-get install -y apache2 && apt-get install nano && echo "ServerName localhost" >> /etc/apache2/apache2.conf && /etc/init.d/apache2 start

ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="var/run/apache2.pid"
ENV APACHE_RUN_USER="WWW-data"
ENV APACHE_RUN_GROUP="WWW-data"
ENV APACHE_LOG_DIR="var/log/apache2"

LABEL Description="Webserver"

VOLUME /var/www/

EXPOSE 8080

ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]

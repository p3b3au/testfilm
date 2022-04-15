FROM php:8-apache
# config apache :
COPY /apache-conf /etc/apache2/sites-available/
COPY /app /var/www/html
RUN apt-get update
RUN apt-get install -y git
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite
# RUN apt-get install nano
EXPOSE 80


# docker run -d --name film_db -p 3306:3306 --env MYSQL_ROOT_PASSWORD=root mysql
# docker run -d --link film_db:db --name myAdmin -p 8080:8080 adminer
# docker build . -t myapachefilm
# docker run -d --link film_db:film_db --name httpfilm -p 80:80 myapachefilm
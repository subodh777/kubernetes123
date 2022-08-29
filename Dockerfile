FROM nik1234321/niklatest:latest
MAINTAINER ghadagenikhil4@gmail.com
RUN apt install -y apache2 \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip loxury.zip
 RUN cp -rvf loxury/* .
 RUN rm loxury  loxury.zip
 CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
 EXPOSE 80

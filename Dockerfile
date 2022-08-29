FROM nik1234321/niklatest:latest
MAINTAINER ghadagenikhil4@gmail.com
RUN apt-get install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip loxury.zip
 RUN cp -rvf loxury/* .
 RUN rm loxury  loxury.zip
 CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
 EXPOSE 80

FROM nik1234321/niklatest
MAINTAINER ghadagenikhil4@gmail.com
RUN apt install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/romofyi.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip romofyi.zip
 RUN cp -rvf romofyi/* .
 RUN rm romofyi  romofyi.zip
 CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
 EXPOSE 80

FROM nik1234321/niklatest:latest
MAINTAINER ghadagenikhil4@gmail.com
RUN apt-get update 
RUN apt-get install nginx 
CMD [“echo”,”Image created”]
EXPOSE 80

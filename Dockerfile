FROM nik1234321/niklatest:latest
MAINTAINER ghadagenikhil4@gmail.com
RUN apt-get update 
RUN apt-get install nginx -y
CMD ["/bin/bash", "-c", "while true; do echo Hello-n; sleep 5 ; done"]
EXPOSE 80

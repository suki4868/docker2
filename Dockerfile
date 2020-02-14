FROM ubuntu:14.04
MAINTAINER "korea-jung <kiwon1981@google.com>"
LABEL "purpose"="practice"
RUN apt-get update
RUN apt-get -y install apache2
COPY ./test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo JUNG hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND 

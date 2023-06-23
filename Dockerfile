FROM ubuntu
LABEL maintainer="@HHH"
RUN apt update 
ENV DEBIAN_FRONTEND noninteractive
RUN apt upgrade -y
RUN apt install apache2 -y
RUN apt install php8.1 -y
RUN apt autoclean

WORKDIR /var/www/html
COPY site/* ./ 

EXPOSE 80

CMD [ "apache2ctl","-D", "FOREGROUND" ]

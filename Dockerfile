FROM centos:latest
RUN yum update
RUN yum install httpd zip unzip wget -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/cla.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip cla.zip
CMD ["/usr/bin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


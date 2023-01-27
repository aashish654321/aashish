FROM centos:latest
MAINTAINER aashish:aashish@gmail.com
RUN yum install httpd -y \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN co -rvf markups-kindle.zip
RUN rm -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

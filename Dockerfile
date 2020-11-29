FROM centos:7

RUN yum update -y && yum install httpd -y
RUN yum clean all
#You may add the User as per your choice.
RUN useradd Abhi
RUN rm -f /var/www/html/index.html

#Create a tgz of all your website files which you want to dislay using Docker and name it as mainfile.tgz. ADD will extract the mainfile.tgz and place the files directly into the TML directory. 
ADD mainfile.tgz /var/www/html/

ENV USER Abhi
ENV PATH /home/Abhi
ENV PATH /bin/bash

WORKDIR /home/Abhi

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

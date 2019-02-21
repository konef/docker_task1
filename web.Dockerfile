FROM centos:7

RUN  yum install -y epel-release && \
     yum update -y && \
     yum install -y nginx && \ 
     rm -rf /var/lib/apt/lists/* 
      
# Define working directory.
WORKDIR /etc/nginx

COPY /resources/conf/tomcat.conf /etc/nginx/conf.d/tomcat.conf

EXPOSE 80

STOPSIGNAL SIGTERM

# Define default command.
CMD ["nginx", "-g", "daemon off;"]




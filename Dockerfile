FROM tomcat:8
MAINTAINER darshanpatil
WORKDIR /home/ubuntu
COPY /target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

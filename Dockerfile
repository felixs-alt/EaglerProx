FROM ubuntu:latest
COPY . .
RUN apt-get update -y
RUN openjdk-11-jdk openjdk-11-jre
EXPOSE 8081
EXPOSE 8000-65535
CMD java -Xmx512M -jar bungee.jar
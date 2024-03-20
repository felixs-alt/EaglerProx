FROM ubuntu:latest
COPY . .
RUN apt-get update -y
RUN apt-get install -y openjdk-11-jdk openjdk-11-jre
EXPOSE 8081
EXPOSE 25577
CMD java -Xmx512M -jar bungee.jar
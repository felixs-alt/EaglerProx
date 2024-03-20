FROM ubuntu:latest
COPY . .
RUN apt-get update -y
RUN apt-get install -y man openjdk-11-jdk openjdk-11-jre jq ffmpeg git tmux wget curl dialog
EXPOSE 8081
EXPOSE 8000-65535
CMD java -Xmx512M -jar bungee.jar
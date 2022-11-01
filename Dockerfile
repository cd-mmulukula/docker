FROM openjdk:8-jre-alpine

ARG JAR_FILE=vhub-smart-trailer-server-0.0.1-exec.jar

RUN apk update && apk add --no-cache libc6-compat
RUN ln -s /lib64/ld-linux-x86-64.so.2 /lib/ld-linux-x86-64.so.2

RUN apk add bash
RUN apk add vim

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh


RUN mkdir /temp/logs

#ADD ${JAR_FILE} /application.jar

WORKDIR /
CMD /entrypoint.sh
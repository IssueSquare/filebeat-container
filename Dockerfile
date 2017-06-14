FROM alpine:3.6
MAINTAINER ArthurMa <4406arthur@gmail.com>

#for avoiding x509 no roots provided when use TLS
RUN apk --no-cache add ca-certificates

#it's from filebeat-5.4.1-linux-x86_64.tar.gz
ADD bin/filebeat.tar.gz /usr/local/bin

# Setup work environment
ENV FILEBEAT_PATH /tmp
WORKDIR $FILEBEAT_PATH

#Setup default configuration
COPY filebeat.yml /tmp
COPY entrypoint.sh /tmp/entrypoint.sh

CMD ["sh","-c","./entrypoint.sh"]

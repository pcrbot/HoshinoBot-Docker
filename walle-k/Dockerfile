FROM alpine:latest

COPY ./walle-k /usr/bin/walle-k
RUN chmod +x /usr/bin/walle-k

WORKDIR /data

ENTRYPOINT ["/usr/bin/walle-k"]

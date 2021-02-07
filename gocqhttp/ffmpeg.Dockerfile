FROM jrottenberg/ffmpeg:4-ubuntu

COPY ./go-cqhttp /usr/bin/cqhttp

WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]

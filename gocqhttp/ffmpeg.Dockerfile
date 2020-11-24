FROM jrottenberg/ffmpeg:4-alpine

COPY ./go-cqhttp /usr/bin/cqhttp

WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]

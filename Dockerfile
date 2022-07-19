FROM alpine:3.16.1

COPY detect /detect

ENTRYPOINT ["/detect"]

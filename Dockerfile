FROM alpine:3.14.1

COPY detect /detect

ENTRYPOINT ["/detect"]

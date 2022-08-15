FROM alpine:3.16.2

COPY detect /detect

ENTRYPOINT ["/detect"]

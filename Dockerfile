FROM alpine:3.14.2

COPY detect /detect

ENTRYPOINT ["/detect"]

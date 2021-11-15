FROM alpine:3.14.3

COPY detect /detect

ENTRYPOINT ["/detect"]

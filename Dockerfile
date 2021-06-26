FROM alpine:3.14.0

COPY detect /detect

ENTRYPOINT ["/detect"]

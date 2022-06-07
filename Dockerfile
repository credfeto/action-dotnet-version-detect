FROM alpine:3.16.0

COPY detect /detect

ENTRYPOINT ["/detect"]

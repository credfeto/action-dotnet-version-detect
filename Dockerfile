FROM alpine:3.13.0

COPY detect /detect

ENTRYPOINT ["/detect"]

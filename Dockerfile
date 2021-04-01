FROM alpine:3.13.4

COPY detect /detect

ENTRYPOINT ["/detect"]

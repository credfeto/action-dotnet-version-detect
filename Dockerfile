FROM alpine:3.13.3

COPY detect /detect

ENTRYPOINT ["/detect"]

FROM alpine:3.13.1

COPY detect /detect

ENTRYPOINT ["/detect"]

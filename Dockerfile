FROM alpine:3.13.2

COPY detect /detect

ENTRYPOINT ["/detect"]

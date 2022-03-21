FROM alpine:3.15.1

COPY detect /detect

ENTRYPOINT ["/detect"]

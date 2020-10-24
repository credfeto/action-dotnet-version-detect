FROM alpine:3.12.1

COPY detect /detect

ENTRYPOINT ["/detect"]

FROM alpine:3.12.2

COPY detect /detect

ENTRYPOINT ["/detect"]

FROM alpine:3.12.3

COPY detect /detect

ENTRYPOINT ["/detect"]

FROM alpine:3.15.2

COPY detect /detect

ENTRYPOINT ["/detect"]

FROM alpine:3.15.3

COPY detect /detect

ENTRYPOINT ["/detect"]

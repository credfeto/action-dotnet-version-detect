FROM alpine:3.13.5

COPY detect /detect

ENTRYPOINT ["/detect"]

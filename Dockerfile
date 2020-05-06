FROM ubuntu:latest

COPY detect /detect

ENTRYPOINT ["/detect"]

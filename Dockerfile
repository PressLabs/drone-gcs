FROM alpine:3.7

ADD drone-gcs /bin/

RUN apk --no-cache add ca-certificates && update-ca-certificates
RUN chmod +x /bin/drone-gcs

ENTRYPOINT ["/bin/drone-gcs"]

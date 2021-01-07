FROM alpine:3.11
RUN apk update --no-cache && apk add ca-certificates
COPY nfs/nfs-client-provisioner /nfs-client-provisioner
ENTRYPOINT ["/nfs-client-provisioner"]

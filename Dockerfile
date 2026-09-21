FROM alpine:latest
RUN apk add --no-cache icecast
COPY icecast.xml /etc/icecast.xml
RUN chown -R icecast:icecast /etc/icecast.xml
USER icecast
CMD ["icecast", "-c", "/etc/icecast.xml"]

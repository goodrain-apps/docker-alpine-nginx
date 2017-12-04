FROM goodrainapps/alpine:3.4

RUN apk add --no-cache nginx s6


COPY  etc /etc
COPY docker-entrypoint.sh /

VOLUME /data

EXPOSE 80 443

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/s6-svscan","/etc/s6"]

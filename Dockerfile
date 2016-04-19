FROM goodrain.me/alpine:3.3

ENV NGINX_VERSION 1.8.1-r0
ENV S6_VERSION 2.2.4.2-r0

RUN apk add --no-cache nginx="1.8.1-r0" \
    s6="2.2.4.2-r0"


COPY  etc /etc
COPY docker-entrypoint.sh /

VOLUME /data

EXPOSE 80 443

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/s6-svscan","/etc/s6"]

FROM alpine:latest

MAINTAINER admin@v2ray.com

COPY v2ray /usr/bin/v2ray/

RUN apk --update add bash \
    && mkdir /var/log/v2ray/ \
    && mkdir /etc/v2ray/ \
    && chmod +x /usr/bin/v2ray/v2ray \
    && adduser -D -H -s /bin/false v2ray_user v2ray_user \
    && chown -R v2ray_user:v2ray_user /usr/bin/v2ray/ \
    && chown -R v2ray_user:v2ray_user /etc/v2ray/ \
    && chown -R v2ray_user:v2ray_user /var/log/v2ray/ \
    && apk del bash

ENV PATH /usr/bin/v2ray:$PATH

USER v2ray_user

VOLUME ["/etc/v2ray/config.json"]

EXPOSE 6300-6350/udp 3389 28001 1080 8080

CMD ["v2ray", "-config=/etc/v2ray/config.json"]

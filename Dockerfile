FROM haproxy:1.5
MAINTAINER XGFan

EXPOSE 9999
ENV SS-SERVER shadowsocks.com
ENV SS-PORT 8388

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
 

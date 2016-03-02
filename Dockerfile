FROM haproxy:1.5
MAINTAINER XGFan

EXPOSE 9999
ENV SS-SERVER
ENV SS-PORT

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
RUN sed 's/#server#/${SS-SERVER}/g' /usr/local/etc/haproxy/haproxy.cfg
RUN sed 's/#port#/${SS-PORT}/g' /usr/local/etc/haproxy/haproxy.cfg

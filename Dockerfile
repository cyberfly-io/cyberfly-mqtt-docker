FROM alpine:3.14
LABEL Maintainer="Cyberfly IO<info@cyberfly.io>" \
      Description="Lightweight Mosquitto MQTT server based on Alpine Linux."

RUN apk --no-cache add mosquitto mosquitto-clients

EXPOSE 1883
EXPOSE 9001

WORKDIR /etc/mosquitto/

ADD mosquitto.conf /etc/mosquitto/
ADD cert.pem /etc/mosquitto/certs/
ADD fullchain.pem /etc/mosquitto/certs/
ADD privkey.pem /etc/mosquitto/certs/

ENV PATH /usr/sbin:$PATH

USER nobody

ENTRYPOINT ["/usr/sbin/mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]

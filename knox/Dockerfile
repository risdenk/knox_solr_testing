FROM openjdk:8-jre-alpine

RUN apk --no-cache add bash procps wget ca-certificates && update-ca-certificates
RUN adduser -S knox

ENV KNOX_VERSION 0.12.0-RC0

RUN wget -q -O /knox-${KNOX_VERSION}.zip https://dist.apache.org/repos/dist/dev/knox/knox-0.12.0/knox-0.12.0.zip && unzip /knox-${KNOX_VERSION}.zip && rm knox-${KNOX_VERSION}.zip && mv /knox-0.12.0 /knox-${KNOX_VERSION} && ln -nsf /knox-${KNOX_VERSION} /knox && chmod +x /knox/bin/*.sh && chown -R knox /knox/

COPY master /knox/data/security/master
COPY gateway-site.xml /knox/conf/gateway-site.xml
COPY krb5JAASLogin.conf /knox/conf/krb5JAASLogin.conf
COPY gateway-log4j.properties /knox/conf/gateway-log4j.properties

RUN chown -R knox /knox/data/security

ADD ldap.sh /ldap.sh
ADD gateway.sh /gateway.sh

USER knox
WORKDIR /knox


FROM ubuntu:14.04

RUN apt-get -y update && echo package heimdal/realm string EXAMPLE.COM | debconf-set-selections && apt-get -y install --no-install-recommends heimdal-kdc libsasl2-modules-gssapi-heimdal curl && rm -rf /var/lib/apt/lists/*

# Create keytab folder.
RUN mkdir /etc/docker-kdc

COPY krb5.conf /etc/krb5.conf
COPY krb5.conf /etc/docker-kdc/krb5.conf

EXPOSE 88

# Add kerberos principal/s.
RUN kadmin -l add --password=knox --use-defaults knox/knox.example.com@EXAMPLE.COM
RUN kadmin -l add --password=solr --use-defaults HTTP/solr.example.com@EXAMPLE.COM

# Export keytab.
RUN kadmin -l ext_keytab -k /etc/docker-kdc/knox.keytab knox/knox.example.com@EXAMPLE.COM
RUN kadmin -l ext_keytab -k /etc/docker-kdc/solr.keytab HTTP/solr.example.com@EXAMPLE.COM

RUN chmod 444 /etc/docker-kdc/*.keytab

# KDC daemon startup.
ENTRYPOINT ["/usr/lib/heimdal-servers/kdc", "--config-file=/etc/heimdal-kdc/kdc.conf", "-P 88"]

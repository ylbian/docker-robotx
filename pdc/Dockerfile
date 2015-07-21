FROM fedora:21

MAINTAINER ybian <chuijiaolianying@gmail.com>

# Copy rpm file to container for install
COPY *.rpm /tmp/

# Install python-pip, postgresql-devel
RUN yum -y install python-pip python-requests-kerberos python-requests python-devel postgresql postgresql-devel openssl gcc krb5-workstation

# Install robotframework
RUN pip install robotframework robotframework-selenium2library psycopg2

# Rpm install python-pdc
RUN rpm -i /tmp/python-pdc-0.5.0-0.1.beta.noarch.rpm
RUN rpm -i /tmp/beanbag-1.9.2-3.el7eng.noarch.rpm
RUN rpm -i /tmp/pdc-client-0.5.0-0.1.beta.noarch.rpm

# Config kerberos
COPY krb5.conf /etc/

# Set CA config
RUN curl --insecure -o /etc/pki/tls/certs/redhat-cacert.crt https://engineering.redhat.com/Eng-CA.crt
RUN ln -s /etc/pki/tls/certs/redhat-cacert.crt `openssl x509 -hash -noout -in /etc/pki/tls/certs/redhat-cacert.crt`.0
RUN cat /etc/pki/tls/certs/redhat-cacert.crt >> /etc/pki/tls/certs/ca-bundle.crt

# clear /tmp/
RUN rm -rf /tmp/*

# Set workdir
WORKDIR /data/

FROM fedora:21

MAINTAINER ybian <chuijiaolianying@gmail.com>

# Copy rpm file to container for install
COPY *.rpm /tmp/

# Install python-pip, postgresql-devel
RUN yum -y install python-pip python-requests-kerberos python-requests python-devel postgresql postgresql-devel openssl gcc

# Install robotframework
RUN pip install robotframework robotframework-selenium2library psycopg2

# Rpm install python-pdc
RUN cd /tmp/
RUN rpm -i python-pdc-0.5.0-0.1.beta.noarch.rpm
RUN rpm -i beanbag-1.9.2-3.el7eng.noarch.rpm
RUN rpm -i pdc-client-0.5.0-0.1.beta.noarch.rpm

# Config kerberos
COPY krb5.conf /etc/

# Set CA config
RUN cd /etc/pki/tls/certs/
RUN curl --insecure -o redhat-cacert.crt https://engineering.redhat.com/Eng-CA.crt
RUN ln -s redhat-cacert.crt `openssl x509 -hash -noout -in redhat-cacert.crt`.0
RUN cat redhat-cacert.crt >> ca-bundle.crt

# clear /tmp/
RUN rm -rf *

FROM fedora:21

MAINTAINER ybian <ybian@redhat.com>

# Install firefox, Xvfb(for fake display)
# Install python-pip(for install robotframework)
# RUN yum -y update
RUN yum -y install firefox xorg-x11-server-Xvfb python-pip

# Install robotframework and selenium2library
RUN pip install robotframework robotframework-selenium2library

# Set workdir which mount automation scripts volumes
WORKDIR /data/

# Set env DISPLAY=:99, for Xvfb :99
ENV DISPLAY=:99

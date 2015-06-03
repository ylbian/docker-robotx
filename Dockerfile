FROM fedora:22

MAINTAINER ybian <ybian@redhat.com>

# Install the basic packages
# RUN yum update -y
RUN yum install -y firefox git python-pip gcc gcc-c++ python-devel xorg-x11-server-Xvfb

# Install RobotX
RUN mkdir /robotx
COPY install.sh /robotx/
COPY krb5.conf /robotx/
COPY nitrate.py /robotx/
COPY tcms.conf /robotx/
RUN sh /robotx/install.sh

# Set env DISPLAY=:99
RUN export DISPLAY=:99

# Start Xvfb as deamon to run a virtual window
#CMD Xvfb :99

# Run automation test script
#CMD Xvfb pybot test.txt

# docker image for storing automation codes
FROM fedora:21

MAINTAINER ybian <ybian@redhat.com>

# Install basic packages include git vim
# RUN yum update -y
RUN yum install git -y

# config git user.email and user.name
RUN git config --global user.email 'ybian@redhat.com'
RUN git config --global user.name 'ybian'

# set dir
WORKDIR /data/

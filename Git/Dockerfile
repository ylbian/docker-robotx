FROM fedora:21

MAINTAINER ybian <ybian@redhat.com>

# Install basic packages include git vim
# RUN yum update -y
RUN yum install git vim -y

# config git user.email and user.name
RUN git config --global user.email 'ybian@redhat.com'
RUN git config --global user.name 'ybian'

# set user and dir
USER git
WORKDIR /data/

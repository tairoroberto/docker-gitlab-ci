FROM gitlab/gitlab-ce

MAINTAINER Tairo Roberto <tairoroberto@gmail.com>

RUN apt-get -qq update && \
    apt-get install -qqy --no-install-recommends \
      curl \
      wget \
      usbutils \
      libusb-1.0-0-dev \
      unzip \
      && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

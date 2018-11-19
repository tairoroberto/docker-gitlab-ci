FROM gitlab/gitlab-ce

MAINTAINER Tairo Roberto <tairoroberto@gmail.com>

RUN apt-get update -q  && \
    apt-get install -y --no-install-recommends \
      curl \
      wget \
      usbutils \
      libusb-1.0-0-dev \
      unzip \
      nano \
      && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose web & ssh
EXPOSE 443 80 22

# Define data volumes
VOLUME ["/etc/gitlab", "/var/opt/gitlab", "/var/log/gitlab"]

# Wrapper to handle signal, trigger runit and reconfigure GitLab
CMD ["/usr/local/bin/wrapper"]
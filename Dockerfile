FROM gitlab/gitlab-ce

MAINTAINER Tairo Roberto <tairoroberto@gmail.com>

# Enter in folder
# docker-compose up -d
# Get IP
# docker container inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' Gitlab_CI
# sudo nano /etc/hosts

# Register Runner
# docker exec -i -t Gitlab_Runner sudo gitlab-runner register

# set the runner
# docker container exec -t -i Gitlab_Runner /bin/bash

# nano /etc/gitlab-runner/config.toml

#concurrent = 1
#check_interval = 0
#
#[[runners]]
#  name = "runner_ubuntu"
#  url = "http://gitlab.docker/"
#  token = "e2a798aec934eb3c36781c5f8f6c50"
#  executor = "docker"
#  [runners.docker]
#    tls_verify = false
#    image = "alpine:3.5"
#    privileged = false
#    disable_cache = false
#    volumes = ["/cache"]
#    shm_size = 0
#    extra_hosts = ["gitlab.docker:_ip_do_docker_host_"]
#  [runners.cache]
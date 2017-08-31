#!/bin/bash

sudo docker run --detach \
    --hostname gitlab.example.com \
    --publish 443:443 --publish 80:80 --publish 22:22 \
    --name gitlab \
    --restart always \
    --volume ${PWD}/gitlab/config:/etc/gitlab \
    --volume ${PWD}/gitlab/logs:/var/log/gitlab \
    --volume ${PWD}/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:9.5.2-ce.0

#!/usr/bin/env bash

echo Starting Docker containers...
docker run -d -t --rm --name ubuntu pycontribs/ubuntu
docker run -d -t --rm --name centos7 pycontribs/centos:7
docker run -d -t --rm --name fedora pycontribs/fedora

echo Starting Ansible playbook...
ansible-playbook site.yml -i inventory/prod.yml --ask-vault-pass

echo Stopping Docker containers...
docker stop ubuntu
docker stop centos7
docker stop fedora
#!/bin/bash

for ver in v1 v2; do
  #docker build --build-arg="VERSION=${ver}" --platform linux/amd64,linux/arm64 -t registry.lohika.com/devops-guild/5th-meeting:${ver} -f Containerfile .
  docker build --build-arg="VERSION=${ver}" --platform linux/amd64 -t registry.lohika.com/devops-guild/5th-meeting:${ver} -f Containerfile .
  docker push registry.lohika.com/devops-guild/5th-meeting:${ver}
done

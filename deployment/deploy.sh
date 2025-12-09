#!/bin/bash
docker stop $(docker ps -q)
docker rm $(docker ps -a -q)

docker pull amcgohan/project3-website:latest
docker run -d --restart always -p 8080:80 amcgohan/project3-website:latest

#!/bin/bash

docker kill my-apache2

yes | docker system prune

docker pull jesster21/my-apache2:latest

docker run -d --rm --name my-apache2 -p 80:80 jesster21/my-apache2:latest

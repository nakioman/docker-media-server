#!/bin/bash

# 1. Create docker network
docker network create webproxy

# 2. Create local volumes
docker volume create nginx_conf
docker volume create nginx_certs
docker volume create nginx_vhost
docker volume create nginx_html
docker volume create transmission_config --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/Docker/volumes/transmission --opt allow_other
docker volume create transmission_watch --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/downloads/watch_torrents --opt allow_other
docker volume create downloads --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/downloads --opt allow_other
docker volume create sonarr_config --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/Docker/volumes/sonarr --opt allow_other
docker volume create tvseries --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/tv --opt allow_other
docker volume create portainer_data --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/Docker/volumes/portainer --opt allow_other
docker volume create movies --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/movies --opt allow_other
docker volume create couchpotato_config --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/Docker/volumes/couchpotato --opt allow_other
docker volume create htpcmanager_config --driver vmhgfs:latest --opt sharedfolder=.host:/downloads/Docker/volumes/htpcmanager --opt allow_other

# 2. Download the latest version of nginx.tmpl
rm nginx.tmpl
wget https://raw.githubusercontent.com/jwilder/nginx-proxy/master/nginx.tmpl

# 4. Start proxy
docker-compose up -d

exit 0

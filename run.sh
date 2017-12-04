#!/bin/bash

# 1. Check if .env file exists
if [ -e .env ]; then
    source .env
else 
    echo "Please set up your .env file before starting your enviornment."
    exit 1
fi

# 2. Create docker network
docker network create ${NETWORK}

# 2. Create local volumes
docker volume create ${VOLUME_NGINX_CONF} ${VOLUME_NGINX_CONF_CREATION_OPTIONS}
docker volume create ${VOLUME_NGINX_VHOST} ${VOLUME_NGINX_VHOST_CREATION_OPTIONS}
docker volume create ${VOLUME_NGINX_HTML} ${VOLUME_NGINX_HTML_CREATION_OPTIONS}
docker volume create ${VOLUME_NGINX_CERTS} ${VOLUME_NGINX_CERTS_CREATION_OPTIONS}
docker volume create ${VOLUME_TRANSMISSION_CONFIG} ${VOLUME_TRANSMISSION_CONFIG_CREATION_OPTIONS}
docker volume create ${VOLUME_TRANSMISSION_WATCH} ${VOLUME_TRANSMISSION_WATCH_CREATION_OPTIONS}
docker volume create ${VOLUME_SONARR_CONFIG} ${VOLUME_SONARR_CONFIG_CREATION_OPTIONS}
docker volume create ${VOLUME_PORTAINER_DATA} ${VOLUME_PORTAINER_DATA_CREATION_OPTIONS}
docker volume create ${VOLUME_COUCHPOTATO_CONFIG} ${VOLUME_COUCHPOTATO_CONFIG_CREATION_OPTIONS}
docker volume create ${VOLUME_HTPCMANAGER_CONFIG} ${VOLUME_HTPCMANAGER_CONFIG_CREATION_OPTIONS}
docker volume create ${VOLUME_DOWNLOADS} ${VOLUME_DOWNLOADS_CREATION_OPTIONS}
docker volume create ${VOLUME_TVSERIES} ${VOLUME_TVSERIES_CREATION_OPTIONS}
docker volume create ${VOLUME_MOVIES} ${VOLUME_MOVIES_CREATION_OPTIONS}

# 2. Download the latest version of nginx.tmpl
rm nginx.tmpl
wget https://raw.githubusercontent.com/jwilder/nginx-proxy/master/nginx.tmpl

# 4. Start proxy
docker-compose up -d

exit 0

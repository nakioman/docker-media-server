# Media Server using Docker, NGINX and Let's Encrypt

With this repo you will be able to set up your media server using a single NGINX proxy to manage your connections, automating your apps container (port 80 and 443) to auto renew your ssl certificates with Let´s Encrypt.

Something like:

![Web Proxy environment](https://github.com/evertramos/images/raw/master/webproxy.jpg)


## Why use it?

Using this set up you will be able start a new media server environment in a few seconds. 

Easy and trustworthy!


## Prerequisites

In order to use this compose file (docker-compose.yml) you must have:

1. docker (https://docs.docker.com/engine/installation/)
2. docker-compose (https://docs.docker.com/compose/install/)

## What's included

- Portainer: a lightweight management UI which allows you to easily manage your different Docker environments.

- Transmission: a bittorrent client.

- Sonarr: a PVR for usenet and bittorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them.

- Couchpotato: an automatic NZB and torrent downloader. You can keep a "movies I want" list and it will search for NZBs/torrents of these movies every X hours.

- Htpc-manager: a front end for many htpc related applications.

## How to use it

1. Clone this repository:

```bash
git clone https://github.com/nakioman/docker-media-server.git
```

2. Make a copy of our `.env.sample` and rename it to `.env`:

Update this file with your preferences.

3. Run our start script

```bash
# ./run.sh
```

Your media server is ready to go!

## Credits

Without the repositories below this webproxy wouldn´t be possible.

Credits goes to:
- nginx-proxy [@jwilder](https://github.com/jwilder/nginx-proxy)
- docker-gen [@jwilder](https://github.com/jwilder/docker-gen)
- docker-letsencrypt-nginx-proxy-companion [@JrCs](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion)
- linuxserver/couchpotato [@linuxserver](https://github.com/linuxserver/docker-couchpotato)
- linuxserver/sonarr [@linuxserver](https://github.com/linuxserver/docker-sonarr)
- linuxserver/transmission [@linuxserver](https://github.com/linuxserver/docker-transmission)
- linuxserver/htpcmanager [@linuxserver](https://github.com/linuxserver/docker-htpcmanager)
- portainer [@portainer](https://github.com/portainer/portainer)
- docker-compose-letsencrypt-nginx-proxy-companion [@evertramos](https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion)
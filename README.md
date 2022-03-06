# docker-compose

This is a collection of the docker-compose files that I'm currently using on my QNAP to run various different things.  Assuming that I've done it right, things are broken out into their own networks, for example Plex can talk to Jackett but Plex nor Jackett can talk to MediaWiki.

# Usage

These were specifically made for my set-up so I wouldn't recommend just copy and pasting them.  They do have comments for what things do, but I would also recommend reading the [docker docs](https://docs.docker.com/compose/compose-file/) before just randomly running stuff from the internet on your server. :-)

The files are named after their container (i.e `docker-compose_plex.yml`), so I'd recommend renaming them back to `docker-compose.yml` before using them.
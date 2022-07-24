# docker-compose/plexnet

I don't use Docker to host my Plex Media Server because it ran like garbage on my QNAP.  Here's docker-compose files for all the other useful stuff though. 

**FlareSolverr**: http://(host):8191

**Transmission**: http://(host):9091

**Jackett**: http://(host):9117

**Prowlarr**: http://(host):9696

**Sonarr**: http://(host):8989

**Radarr**: http://(host):7878

# Usage

I'm hoping that if you've come across this you know what you're doing but basically, modify the configuration files so they match with what you want then run `docker-compose up -d`.  You'll then need to configure them all to talk to each other for various reasons. 

Sonarr and Radarr talk to Prowlarr to pull torrents.  Prowlarr uses FlareSolverr to bypass Cloudflare for certain torrent sites like yts.  The torrents are then sent to Transmission to download, and sends a call back to Sonarr or Radarr to tell them its finished, and they'll then drop the files into the designated directories that you've configured in the docker-compose file. 

Plex (not included here) will then use the same paths you've chosen for media in Sonarr (TV) and Radarr (Films) to include those movies in your Plex Library. 

I've included Jackett but I replaced it with Prowlarr.
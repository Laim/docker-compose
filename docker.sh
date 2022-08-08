#!/bin/bash
echo ">> Enabling docker containers..."
echo ">> These contains should be picked up and started:"
echo "      -- Transmission"
echo "      -- Gluetun"
echo "      -- Prowlarr"
echo "      -- Radarr"
echo "      -- Sonarr"
echo "      -- MediaWiki"
# echo "      -- FlareSolverr"

cd /share/CACHEDEV1_DATA/AppData/Transmission
echo "      ++ Entered Transmission"
docker-compose up -d

# echo "      ++ Entered FlareSolverr"
# cd /share/CACHEDEV1_DATA/AppData/FlareSolverr
# docker-compose up -d
# echo ">> We're going to sleep for 30 seconds to allow FlareSolverr to boot up completely"
# /bin/sleep 30 #30 seconds
# echo ">> Leaving sleep..."

cd /share/CACHEDEV1_DATA/AppData/Gluetun
echo "      ++ Entered Gluetun"
docker-compose up -d
echo ">> We're going to sleep for 1 minute to allow Gluetun to boot up completely"
/bin/sleep 59 #30 seconds
echo ">> Leaving sleep..."

echo "      ++ Entered Prowlarr (replacement for Jackett)"
cd /share/CACHEDEV1_DATA/AppData/Prowlarr
docker-compose up -d

echo ">> We're going to sleep for 1 minute to allow Prowlarr to boot up completely"
/bin/sleep 59 #59 seconds
echo ">> Leaving sleep..."

echo "      ++ Entered Radarr"
cd /share/CACHEDEV1_DATA/AppData/Radarr
docker-compose up -d

echo "      ++ Entered Sonarr"
cd /share/CACHEDEV1_DATA/AppData/Sonarr
docker-compose up -d

echo "      ++ Entered Wiki"
cd /share/CACHEDEV1_DATA/AppData/Wiki
docker-compose up -d

echo ">> Docker compose ran for all docker containers, they should be online if it worked."
echo ">> Active docker contains should now appear..."
docker container ls

#FYI, you need to run this for the script to work
#chmod +x ./docker.sh

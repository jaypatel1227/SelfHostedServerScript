# =========
#  The purpose of this script is to handle the steps needed to start running the services at start up. Assumes all persistant stuff like dependencies is up-to-date.
# =========
cd ~/Servers

# clean up all existing docker containers
docker ps -aq | xargs docker rm -f

# pull a fresh copy of the file conversion docker container
docker pull jaypatel1227/file-conversion

# run it!
docker run -it -p0.0.0.0:5001:5001 jaypatel1227/file-conversion

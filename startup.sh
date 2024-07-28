cd ~/Servers
#cd ~/Servers/FileConversion/app/
#git pull
#docker compose up

docker pull jaypatel1227/file-conversion
docker run -it -p0.0.0.0:5001:5001 jaypatel1227/file-conversion

docker cp ~/Servers/FileConversion/app/server_config.json docker container ls --all --filter=ancestor="jaypatel1227/file-conversion" --format "{{.ID}}":/bin/

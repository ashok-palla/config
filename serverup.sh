cd //apps/trashbin-geotagging
sudo git reset --hard
sudo git pull

cd //apps/trashbin-geotagging-api
sudo git reset --hard
sudo git pull

sudo docker-compose down
sudo docker container rm -f geotag.iotroncs.com_api geotag.iotroncs.com redis.iotroncs.com
sudo docker image rm -f geotag-api geotag-frontend geotag-redis
sudo docker-compose up -d


docker build -t atem18/ta-lib-docker .
container_id=$(docker create atem18/ta-lib-docker)
docker cp $container_id:/ta-lib .
docker rm $container_id
tar zcvf ta-lib-0.4.0.tar.gz ta-lib
rm -rf ta-lib
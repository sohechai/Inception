docker-compose down
docker rmi -f $(docker images -qa)
rm -rf ../data/wordpress/*
rm -rf ../data/wordpress/.*
rm -- -rf ../data/mariadb/*
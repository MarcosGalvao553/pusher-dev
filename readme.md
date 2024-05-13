build image

docker build -t docker-pusher .

run container

docker compose up -d

enter container

docker exec -it pushernildo bash
composer update
composer install
php index.php
Part 1
Run only Dockerfiles:

bash run.sh

Checking:
curl localhost:8080 | grep title

curl localhost:80 | grep title

curl localhost:8080/sample/


Part 2
Run docker-compose file:

docker-compose up -d --build

Checking:
curl localhost:8080 | grep title
curl localhost:80 | grep title
curl localhost:8080/sample/


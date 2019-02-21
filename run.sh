docker build -t nginx -f web.Dockerfile .
docker build -t tomcat -f tomcat.Dockerfile .
docker build -t app -f application.Dockerfile .
docker run -d -p 8080:8080 --name app app
docker run -d -p 80:80 --link app:app --name nginx nginx 

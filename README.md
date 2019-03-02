# Dockerized flask app using Nginx and Gunicorn

To clone the repository:

```sh
https://github.com/hrmnjt/docker-flask-gunicorn-nginx.git
```

To run the application:
```sh
docker-compose up -d
```

To check the sample API:
```sh
curl -I localhost:80/ping
# HTTP/1.1 200 OK
# Server: nginx/1.15.9
# Date: Sat, 02 Mar 2019 17:12:56 GMT
# Content-Type: application/json
# Content-Length: 1
# Connection: keep-alive
```

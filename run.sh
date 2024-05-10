# DOCKER_SCAN_SUGGEST=false docker build -t prodxcloud:latest .
# docker run -p 80:80 --name react prodxcloud:latest

## run ssl
# docker-compose -f ./deployments/traefik/docker-compose-ssl.yml up -d
# DOCKER_SCAN_SUGGEST=false docker build -t prodxcloud:latest .
# docker-compose -f ./docker-compose-ssl.yml up -d

docker build -t ennolan/prodxcloud:latest .
docker run -d -p 80:80 --name react joelwembo/prodxcloud:latest

# For SSL Certificate in your react application use following Script

# docker-compose -f ./deployments/traefik/docker-compose-ssl.yml up -d
# DOCKER_SCAN_SUGGEST=false docker build -t prodxcloud . --no-cache
# sudo docker run --rm -it -p 3000:3000 prodxcloud
# docker run -d -p 3000:3000 --name react1 prodxcloud
# docker-compose -f ./docker-compose-ssl.yml up -d



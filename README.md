
**Docker network lérehozása**

```shell script
docker network create --driver=bridge --ip-range 10.8.80.0/24 --subnet 10.8.80.1/24 --gateway 10.8.80.1 dataportal-network
```


**postgres**

```shell script
docker volume create --name dataportal-volume -d local
docker-compose up -d postgresql
```

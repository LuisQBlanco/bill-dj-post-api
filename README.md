<!-- # bill-dj-post-api -->
# Bills app REST API with Django, PostgreSQL in Docker

## How to install the REST API

Create a folder then download all file with

```bash
    git clone https://github.com/LuisQBlanco/bill-dj-post-api.git
```

> Inside the directory project

```bash
  cd bill-dj-post-api
```
> Create Containers with Dockerfile
``` bash
    docker build .
```
> Then RUN Docker Compose
``` bash
    docker-compose build
```
> Then RUN containers
``` bash
    docker-compose up
```
To connect PGAdmin4 to the container use inspect and get IP Address: 
> Run docker ps to obtain the container ID for postgres container
```bash
    docker ps

    Example:

    luisq@luisq:~/Course/bill-dj-post-api-test1$ docker ps
CONTAINER ID        IMAGE                                     COMMAND                  CREATED              STATUS              PORTS                    NAMES
a25b316c76a7        bill-dj-post-api_billdjpostg              "sh -c 'sleep 207360…"   About a minute ago   Up About a minute   0.0.0.0:8000->8000/tcp   bill-dj-post-api_billdjpostg_1
f16819c66a01        postgres:12-alpine                        "docker-entrypoint.s…"   About a minute ago   Up About a minute   5432/tcp                 bill-dj-post-api_db_1
luisq@luisq:~/Course/bill-dj-post-api-test1$ 

```

> Run docker inspect
```bash
    docker inspect <Container ID>

    Example:

    docker inspect f16819

```
> at the last part IPAddress with need example "IPAddress": "172.20.0.2"
```bash
 ],
                    "NetworkID": "eca75eaf672f8432282a52b1abc540cfda539e2379bb836e75960ad80da7fa88",
                    "EndpointID": "bb2ecd206b3f0b1aff1a4b424bb0f4c3de62fdbac87296348433bf0a114ed0ee",
                    "Gateway": "172.20.0.1",
                    "IPAddress": "172.20.0.2",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:14:00:02",
                    "DriverOpts": null

```
> For the rest of information you need to connect the server with database you can get in the inspect file like this: 
```bash
            "Env": [
                "POSTGRES_DB=app",
                "POSTGRES_USER=postgres1",
                "POSTGRES_PASSWORD=supersecretpassword",
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "LANG=en_US.utf8",
                "PG_MAJOR=12",
                "PG_VERSION=12.2",
                "PG_SHA256=ad1dcc4c4fc500786b745635a9e1eba950195ce20b8913f50345bb7d5369b5de",
                "PGDATA=/var/lib/postgresql/data"
            ],
```

## Execute sql file database in Postgresql running in Docker

* Database  Data and tables in sql
  * First
    * Copy file into the container
    
```bash
    docker cp ./<filename_source>.sql <container_name>:/<filename_Destination>.sql
    
    Example:

    docker cp ./backup3.sql f16819c66a01:/data_in.sql
```

* After
    * Execute file into the container
    
```bash
    docker exec -it <container_name> psql -U <username> -a <db_name> -f /<filename_in_container>.sql

    Example:

    docker exec -it f16819c66a01 psql -U postgres1 -a app -f /data_in.sql
```

```bash
    docker-compose run billdjpostg sh -c "python manage.py makemigrations"
```
## Kafka

Kafka is a distributed streaming platform.


## Quick Start

1.clone this

2.create docker network

```
docker network create --driver bridge main
```

3.startup kafka

```
docker-compose up
```

4.use on docker host need modfiy /etc/hosts add:

```
$container_ip $container_short_id
```

use $container_short_id link kafka

## Config

config directory is /kafka/conf

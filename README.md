docker-redis
============

Image for a redis-server acting as a cache, without persistence.

## Environment

* MAXMEMORY
  - E.g. 100000, 4G, **required**

* MAXMEMORY_POLICY
  - By default, volatile-lru

## Ports

* 6379
  - Redis

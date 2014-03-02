#!/bin/bash

set -e

envtpl /etc/redis/redis.conf.tpl

redis-server /etc/redis/redis.conf

#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NETWORK_NAME="fishblog-net"

MYSQL_CONTAINER="fishblog-mysql"
REDIS_CONTAINER="fishblog-redis"
RABBITMQ_CONTAINER="fishblog-rabbitmq"
ES_CONTAINER="fishblog-es"

ensure_network() {
  if ! docker network inspect "${NETWORK_NAME}" >/dev/null 2>&1; then
    docker network create "${NETWORK_NAME}" >/dev/null
  fi
}

ensure_container() {
  local name="$1"
  shift

  if docker ps --format '{{.Names}}' | grep -qx "${name}"; then
    return
  fi

  if docker ps -a --format '{{.Names}}' | grep -qx "${name}"; then
    docker start "${name}" >/dev/null
    return
  fi

  docker run -d --name "${name}" "$@" >/dev/null
}

ensure_network

docker pull mysql:8.0 >/dev/null
docker pull redis:6.2 >/dev/null
docker pull rabbitmq:3.13-management >/dev/null
docker pull elasticsearch:7.17.24 >/dev/null

ensure_container "${MYSQL_CONTAINER}" \
  --network "${NETWORK_NAME}" \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -e MYSQL_DATABASE=blog_temp \
  -v "${ROOT_DIR}/docker/mysql/init/00-create-db.sql:/docker-entrypoint-initdb.d/00-create-db.sql:ro" \
  -v "${ROOT_DIR}/blog_mysql8.sql:/docker-entrypoint-initdb.d/01-blog_mysql8.sql:ro" \
  mysql:8.0 \
  --default-authentication-plugin=mysql_native_password

ensure_container "${REDIS_CONTAINER}" \
  --network "${NETWORK_NAME}" \
  -p 6379:6379 \
  redis:6.2

ensure_container "${RABBITMQ_CONTAINER}" \
  --network "${NETWORK_NAME}" \
  -p 5672:5672 \
  -p 15672:15672 \
  rabbitmq:3.13-management

ensure_container "${ES_CONTAINER}" \
  --network "${NETWORK_NAME}" \
  -p 9200:9200 \
  -p 9300:9300 \
  -e discovery.type=single-node \
  -e xpack.security.enabled=false \
  -e ES_JAVA_OPTS=-Xms512m -Xmx512m \
  elasticsearch:7.17.24

echo "middleware ready"

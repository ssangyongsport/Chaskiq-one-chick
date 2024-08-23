#!/bin/sh

set -e

# 下载 CockroachDB 的 CA 证书
mkdir -p $HOME/.postgresql
curl --create-dirs -o $HOME/.postgresql/root.crt 'https://cockroachlabs.cloud/clusters/d42ace5d-069f-4f44-bc9e-1240afc6e902/cert'

# 原有的 Chatwoot 启动命令
bundle exec rails db:setup
bundle exec rails db:migrate
bundle exec rake admin_generator
bundle exec rails s -b 0.0.0.0 -p 3000

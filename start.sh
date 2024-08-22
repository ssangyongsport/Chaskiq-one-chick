#!/bin/sh

set -e

# 下载 CockroachDB 证书
curl --create-dirs -o $HOME/.postgresql/root.crt 'https://cockroachlabs.cloud/clusters/d42ace5d-069f-4f44-bc9e-1240afc6e902/cert'

# 设置数据库并运行迁移
bundle exec rails db:setup
bundle exec rails db:migrate

# 生成管理员账户
bundle exec rake admin_generator

# 启动 Rails 服务器
bundle exec rails s -b 0.0.0.0 -p 3000

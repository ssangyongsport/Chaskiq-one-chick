#!/bin/sh

set -e

# 下载 CockroachDB 证书

# 设置数据库并运行迁移
bundle exec rails db:setup
bundle exec rails db:migrate

# 生成管理员账户
bundle exec rake admin_generator

# 启动 Rails 服务器
bundle exec rails s -b 0.0.0.0 -p 3000

#!/bin/sh

set -e

# 设置 CA 证书路径
export SSL_CERT_FILE=/ca.cert.pem

# 执行 Rails 数据库操作
bundle exec rails db:setup
bundle exec rails db:migrate
bundle exec rake admin_generator
bundle exec rails s -b 0.0.0.0 -p 3000

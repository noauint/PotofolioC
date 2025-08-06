#!/bin/bash
set -e

# RenderのPORT環境変数を取得（なければ8080固定）
PORT="${PORT:-8080}"

echo "Starting Tomcat with port: $PORT"

# テンプレートの__PORT__を実際のポート番号に置換してserver.xml生成
sed "s/__PORT__/${PORT}/g" /usr/local/tomcat/conf/server.xml.template > /usr/local/tomcat/conf/server.xml

# Tomcat起動
catalina.sh run

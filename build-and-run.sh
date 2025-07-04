#!/bin/bash
echo "清理旧容器和卷..."
docker-compose down --volumes

echo "拉取最新代码..."
git pull origin main

echo "构建镜像并启动容器..."
docker-compose up --build

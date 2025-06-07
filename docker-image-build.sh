#!/bin/bash

# Dockerイメージのビルド
docker build -t example-test-k8s-nginx:latest ./nginx

# Dockerイメージのビルド
docker build -t example-test-k8s-php-fpm:latest ./php-fpm

docker images | grep example-test-k8s
# k8s_nginx_php-fpm_grafana_prometheus_metallb

# Order to deploy
deploy_example-test.sh > deploy_grafana_prometheus.sh > deploy_metallb.sh

# About metallb
https://metallb.io/

# How to see the content in the browser
http://example-test.com:/

# How to update Docker image deployed by deployment.yml
kubectl -n example-test rollout restart deployment example-test

# How to get pods detail
kubectl -n example-test get pods

# GEt each pod
docker container ps -a | grep example-test

# IF you want to change ip address pool of metallb, rewrite address pool in metallb_ipaddresspool.yaml
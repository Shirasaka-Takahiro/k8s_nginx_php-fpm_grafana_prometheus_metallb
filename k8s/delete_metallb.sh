#!/bin/bash

#変数準備
namespace_metallb='namespace_metallb.yaml'
deploy_metallb='kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.15.2/config/manifests/metallb-native.yaml'
deploy_IPAddressPool='metallb_ipaddresspool.yaml'

#配列準備
array=($namespace_metallb $deploy_metallb $deploy_IPAddressPool)

#配列を回してデプロイ
for var in ${array[@]}; do 
  kubectl delete -f ${var}
done
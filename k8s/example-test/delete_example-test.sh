#!/bin/bash

#変数準備
namespace_example_test='namespace_example_test.yml'
deployment='deployment.yml'
service='service.yml'

#配列準備
array=($namespace_example_test $deployment $service)

#配列を回してデプロイ
for var in ${array[@]}; do 
  kubectl delete -f ${var}
done
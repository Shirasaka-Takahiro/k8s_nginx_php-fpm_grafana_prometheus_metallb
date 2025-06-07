kubectl port-forward service/grafana 3080:3000 --namespace=my-grafana &
kubectl port-forward svc/prometheus 9090 &
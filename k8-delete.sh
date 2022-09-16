kubectl delete -f k8-pod-api.yaml -n dotnet-docker
kubectl delete -f k8-service-api.yaml -n dotnet-docker

kubectl delete -f k8-pod-ui.yaml -n dotnet-docker
kubectl delete -f k8-service-ui.yaml -n dotnet-docker

#kubectl delete -f k8-Deploy-pod-service.yaml -n dotnet-docker

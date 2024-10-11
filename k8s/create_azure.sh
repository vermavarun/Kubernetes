docker build -t invvggregistry.azurecr.io/theapplication:ui ../ui
docker build -t invvggregistry.azurecr.io/theapplication:api ../dotnet
docker build -t invvggregistry.azurecr.io/theapplication:nodeapi ../node/api

az acr login --name invvggregistry.azurecr.io
docker push invvggregistry.azurecr.io/theapplication:ui
docker push invvggregistry.azurecr.io/theapplication:api
docker push invvggregistry.azurecr.io/theapplication:nodeapi

kubectl describe ns the-application || kubectl create namespace the-application

kubectl apply -f k8-pod-api.yaml -n the-application
kubectl apply -f k8-service-api.yaml -n the-application

kubectl apply -f k8-pod-ui.yaml -n the-application
kubectl apply -f k8-service-ui.yaml -n the-application

open http://localhost:1234

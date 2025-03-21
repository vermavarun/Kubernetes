docker build -t vermavarun/theapplication:ui ../ui
docker build -t vermavarun/theapplication:api ../dotnet
docker build -t vermavarun/theapplication:nodeapi ../node/api

kubectl describe ns the-application || kubectl create namespace the-application

kubectl apply -f k8-pod-api.yaml -n the-application
kubectl apply -f k8-service-api.yaml -n the-application

kubectl apply -f k8-pod-ui.yaml -n the-application
kubectl apply -f k8-service-ui.yaml -n the-application
open http://localhost:1234

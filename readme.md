<h2>Docker</h2>
To Build

`docker build -t docker-dotnet .`

To Run

`docker run -d -p 8080:80 --name docker-dotnet-app docker-dotnet`

Now Visit

<a href="http://localhost:8080/weatherforecast"> Localhost </a>

<hr/>
<h2>Kubernetes</h2>

To Apply K8s Deployment for WebApi Pod

`kubectl apply -f k8-Deploy-Pod.yaml`

To get IP address

`kubectl get pods -o wide`



<hr/>
<h2>Docker</h2>
To Build

`docker build -t docker-dotnet .`

To Run

`docker run -d -p 8080:80 --name docker-dotnet-app vermavarun/docker-dotnet`

Now Visit

<a href="http://localhost:8080/weatherforecast"> Localhost </a>

<hr/>
<h2>Kubernetes</h2>

To Apply K8s Deployment for WebApi Pod

`kubectl apply -f k8-Deploy-Pod.yaml`

To Apply K8s Deployment for pod+service

`kubectl apply -f k8-Deploy-pod-service.yaml -n dotnet-docker`

To get IP address

`kubectl get pods -o wide`

<hr/>
<h2>Docker Cheet Sheet</h2>

<hr/>
<h2>Kubernetes Cheet Sheet</h2>
<h3>Namespaces</h3>
<li>kubectl create namespace {insert-namespace-name-here} </li>
<li>kubectl config set-context --current --namespace=my-namespace</li>


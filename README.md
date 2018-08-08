# CloudNative-Book-Store-Micro-Service-Rest-API

Micro Service based Http Book Store Rest API built using Cloud Native Stack ( GO LANG | DOCKER | KUBERNETES)

</br>

## Introduction

This project is part of course Getting Started with Cloud Native Go

Taught By : Leander Reimer (Packt Publishing)


</br>

## Goal

• The goal is to build Micro Service based Http Book Store Rest API , containerize it using Docker and finally orchestrate using Kubernetes

• The project was developed using GO LANG | DOCKER | KUBERNETES

</br>

</br>

## Approach:


Using Go internal libraries developed a  HTTP server 

Json marshaling and unmarshaling of books  

book rest api 

containerize it using docker work flow 

making use of docker compose to compose micro service with few other containers.

orchestrate  go micro service by scaling it horizantallly using kubernetes

finally did rolling upgrade of go micro service

</br>

## Architecture

</br>

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/arch.png)

</br>

<br>

## Technology stack

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/stack.png)



</br>    


<table>
<thead>
<tr>
<th>Area</th>
<th>Technology</th>
</tr>
</thead>
<tbody>
	
  <tr>
		<td> Programming Languages Used </td>
		<td> Go lang </td>
	</tr>
	<tr>
		<td> Micro Service Containerization </td>
		<td> Docker </td>
	</tr>
	<tr>
		<td>Micro Service Orchestration </td>
		<td> Kubernetes </td>
	</tr>
</tbody>
</table>



</br>

## Prerequisites

In order to build and run this showcase you need to have a couple of things installed:

The Go SDK (e.g. using Brew)

An IDE for the development, like Visual Studio Code or IntelliJ

The Docker Toolbox or native Docker, whatever you prefer


## Execution Instructions


### Building the Go microservices

$ go build

$ ./Cloud-Native-Go.exe

### Containerization with Docker

$ docker build -t cloud-native-go:1.0.1 .
$ docker images
$ docker tag cloud-native-go:1.0.1 lreimer/cloud-native-go:1.0.1
$ docker push lreimer/cloud-native-go:1.0.1


### Running Docker image locally

$ docker run -it -p 8080:8080 cloud-native-go:1.0.1
$ docker run -it -e "PORT=9090" -p 9090:9090 cloud-native-go:1.0.1
$ docker ps --all

$ docker run --name=cloud-native-go -d -p 8080:8080 cloud-native-go:1.0.1
$ docker ps
$ docker stats
$ docker stop
$ docker start

### Improved Containerization with Docker

$ GOOS=linux GOARCH=amd64 go build
$ docker build -t cloud-native-go:1.0.1-alpine .
$ docker images
$ docker tag cloud-native-go:1.0.1-alpine lreimer/cloud-native-go:1.0.1-alpine
$ docker push lreimer/cloud-native-go:1.0.1-alpine

### Docker Compose

$ docker-compose build
$ docker images
$ docker-compose up -d
$ docker-compose kill
$ docker-compose rm

### Kubernetes and Pods

$ kubectl get pods
$ kubectl create -f k8s-pod.yml
$ kubectl get pods
$ kubectl describe pod cloud-native-go

$ kubectl port-forward cloud-native-go 8080:8080

$ kubectl get pods --show-labels
$ kubectl get pods -o wide -L env
$ kubectl label pod cloud-native-go hello=world
$ kubectl get pods -o wide -L hello
$ kubectl label pod cloud-native-go env=prod --overwrite
$ kubectl get pods -o wide -L env

$ kubectl get ns
$ kubectl get pods --namespace kube-system
$ kubectl create -f k8s-namespace.yml
$ kubectl get ns
$ kubectl create -f k8s-pod.yml --namespace cloud-native-go

$ kubectl delete -f k8s-pod.yml


### Kubernetes Deployments and Services

$ kubectl get services,deployments,pods

$ kubectl create -f k8s-deployment.yml
$ kubectl get deployments,pods

$ kubectl apply -f k8s-deployment.yml

$ kubectl create -f k8s-service.yml
$ kubectl get services
$ kubectl describe service cloud-native-go

$ kubectl delete -f k8s-deployment.yml
$ kubectl delete -f k8s-service.yml


### Kubernetes Scaling and Rolling Updates

$ kubectl create -f k8s-deployment.yml --record=true

$ kubectl scale deployment cloud-native-go --replicas=5
$ kubectl scale deployment cloud-native-go --replicas=3

$ kubectl rollout history deployment cloud-native-go

$ kubectl apply -f k8s-deployment.yml

$ kubectl edit deployment cloud-native-go

$ kubectl set image deployment cloud-native-go cloud-native-go=cloud-native-go:1.0.2

$ kubectl rollout history deployment cloud-native-go
$ kubectl rollout undo deployment cloud-native-go --to-revision=0

$ kubectl delete -f k8s-deployment.yml

</br>

## Screen shots

### Get by ISBN

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/1.png)

### Get All books

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/2.png)

### Create Book 

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/3.png)

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/4.png)

### Update book

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/6.png)

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/7.png)

### Delete a book

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/5.png)

![alt text](https://github.com/RepakaRamateja/CloudNative-Book-Stock-Micro-Service-Rest-API/blob/master/images/dlast.png)




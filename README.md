## In this project I apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. 
These include:
- Working in AWS
- Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
- Building pipelines
- Working with Ansible and CloudFormation to deploy clusters
- Building Kubernetes clusters
- Building Docker containers in pipeline

## Overview on the Project
This project entails using CircleCI pipeline to deploy a sample hello-python app to EKS cluster.
The distinct steps of the project are includes;

- lint-app - lints all Dockerfiles
- build-push-flask-appv1 - containerizes and pushes the appv1 (app's old version) to ECR
- create-eks-cluster-deploy-app: creates an eks cluster and deploys the appv1
- build-push-flask-appv2 - containerizes and pushes appv2 (app's new version) to ECR
- rolling-deployment - rolls out appv2 incrementally replacing the resource's Pods with new ones, which are then scheduled on nodes with available resources

#!/bin/sh
#Variables
#
REGION="us-east-1"
CLUSTER_NAME="Wecloud_DevOps"
NAMESPACE_REACT_APP="react-app"
NAMESPACE_LB_NGINX_APP="lb-nginx"
NAMESPACE_MONITORING="monitoring"


echo "Update kubeconfig"
aws eks update-kubeconfig --region $REGION  --name $CLUSTER_NAME
echo " "
echo "Cluster_Info & default namespaces"
kubectl cluster-info
echo " "
kubectl get namespaces
echo " "
echo "Create new namespaces $NAMESPACE_REACT_APP $NAMESPACE_LB_NGINX_APP & $NAMESPACE_MONITORING"
echo " "
kubectl create namespace $NAMESPACE_REACT_APP 
kubectl create namespace $NAMESPACE_LB_NGINX_APP
kubectl create namespace $NAMESPACE_MONITORING
kubectl get namespaces




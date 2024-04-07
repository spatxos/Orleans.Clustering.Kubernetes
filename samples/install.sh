kubectl create namespace orleans-sample
kubectl apply -f ../src/Orleans.Clustering.Kubernetes/Definitions/ClusterVersionCRD.yaml
kubectl apply -f ../src/Orleans.Clustering.Kubernetes/Definitions/SiloEntryCRD.yaml
kubectl apply -f ./Definitions/Silo-ServiceAccount.yaml --namespace orleans-sample
kubectl apply -f ./Definitions/Client-ServiceAccount.yaml --namespace orleans-sample
kubectl apply -f ./Definitions/Silo.yaml --namespace orleans-sample
kubectl apply -f ./Definitions/Gateway.yaml --namespace orleans-sample
kubectl apply -f ./Definitions/Client.yaml --namespace orleans-sample
kubectl get pods --namespace orleans-sample


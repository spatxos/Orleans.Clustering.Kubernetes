dotnet publish -c Release KubeClient -o output/KubeClient
dotnet publish -c Release KubeGatewayHost -o output/KubeGatewayHost
dotnet publish -c Release KubeSiloHost -o output/KubeSiloHost
docker build -f output/KubeClient/Dockerfile -t kubeclient output/KubeClient
docker build -f output/KubeGatewayHost/Dockerfile -t kubegateway output/KubeGatewayHost
docker build -f output/KubeSiloHost/Dockerfile -t kubesilo output/KubeSiloHost

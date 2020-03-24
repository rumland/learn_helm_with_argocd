Learn about Helm and ArgoCD with k8s!

### minikube ArgoCD installation
```
$ helm install myargocd argo/argo-cd -n argocd
```

### how to deploy application under ArgoCD management
```
$ kubectl apply -f ./argocd/mychart/mychart_dev_application.yaml
```

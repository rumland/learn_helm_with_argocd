Learn about Helm and ArgoCD with k8s!

### minikube ArgoCD installation
```
$ helm install myargocd argo/argo-cd -n argocd
```

### how to deploy application under ArgoCD management
```
$ kubectl apply -f ./argocd/mychart/mychart_dev_application.yaml
```

### Helm rules
1. Static defaults specified in values file
1. Dynamic defaults specified in template file as it cannot be set in values. Do with something similar to the following: `drink: {{ .Values.favorite.drink | default (printf "%s-tea" (include "fullname" .)) }}`

### Best practices
1. Quote all strings
1. Quote integers if going to be large. If large, YAML may convert to scientific notation

### Questions
1. Where can one think of the schema definition for the values?

# caviewer

Basic application for serving the contents of a kubernetes CA file.  
This can be useful for tools like https://github.com/mintel/dex-k8s-authenticator that help you authenticate and create kubeconfigs for you

## How it works? 

hardcoded to read `/var/run/secrets/kubernetes.io/serviceaccount/ca.crt` and output that file.  
Container listens on port 8080.  
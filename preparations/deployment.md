# Deployment of the remote libraries

Locally developed libraries can be run either in the container (especially if 
going to be deployed at some other host) or directly on localhost.

## Kubernetes

Local testing with kubernetes can be done with [kind](https://kind.sigs.k8s.io/docs/user/quick-start/).
It also allows the usage of [local images](https://kind.sigs.k8s.io/docs/user/quick-start/#loading-an-image-into-your-cluster)
so images are not needed to be pushed to any real registry (like Docker hub).
# Deploy remote library to Kubernetes

One use case for remote libraries is to offer access to resources that are not normally accessible from test runner. 
This can be e.g. database running on the Kubernetes (where only exposed ports are 80 and 443).
Preparations for this practice are a bit more complex than other to make things to show up nicely.

## Implementation

### Preparation

1. Have Kubernetes cluster that can be used for testing up and running
    - KinD is good option, and allows also usage of locally built images
    - KinD install: https://kind.sigs.k8s.io/docs/user/ingress/#create-cluster
2. Install Ingress: https://kind.sigs.k8s.io/docs/user/ingress/#ingress-nginx
3. Install database: https://bitnami.com/stack/postgresql/helm
    - This expects usage of `helm`

### Tasks

- Deploy remote databaselibrary to cluster
- Publish library through ingress
- Verify with test that installed database is accessible and actions can be done against it

## Help

Same with `docker-compose` can be found from [here](https://github.com/Hi-Fi/rf-remote-library-demos/blob/master/requirement_handling/docker-compose.yml).
Note that at the example stardard remote port is published instead of standard HTTP and HTTPS ports.

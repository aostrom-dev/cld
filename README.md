# FluxCD & Kubernetes

## POC objectives

Validate the possible use of FluxCD to implement a continous delivery workflow in the context of an application deployed in a Kubernetes cluster.

We would like to use FluxCD to automatically update a deployment inside a Kubernetes cluster.

## Infra architecture

### Cloud type

The service model approaches a PaaS, but has some differences as mentioned in the [Kubernetes docs](https://kubernetes.io/docs/concepts/overview/).

### Logical components

- A GKE Cluster
- FluxCD installed in the cluster
- The Github container registry
- A github action that builds the app's docker image
- A dockerized app

TODO: Schema

## Scenario

### STEP 01 (passing tests)

```
Given: An application

When: A developer pushes new commits on Github

Then: A Github action builds a docker image for the application is started
```

### STEP 01 (failing tests)

```
Given: An application

When: A developer pushes new commits on Github (with failing tests)

Then: The Github action doesn't build the image, FluxCD doesn't pull the new image, the application isn't updated
```

### STEP 02

```
Given: a FluxCD deployment running inside the GKE cluster

When: FluxCD detects changes

Then: FluxCD updates the application deployment with the new docker image
```

## Cost

<analysis of load-related costs.>

<option to reduce or adapt costs (practices, subscription)>

## Return of experience

<take a position on the poc that has been produced.>

<Did it validate the announced objectives?>

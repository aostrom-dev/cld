kubectl create secret docker-registry ghcr-credentials --namespace test-app --docker-server=https://ghcr.io --docker-username=valentin-ricard --docker-password=$PULL_SECRET_TOKEN
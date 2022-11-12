# Cloud Run health check sample

https://cloud.google.com/run/docs/configuring/healthchecks

build:

```
docker buildx build \
  --platform linux/amd64 \
  -t asia-northeast1-docker.pkg.dev/cloudrun-healthcheck-sample/cloud-run-source-deploy/hello:latest \
.
```

push:

```
docker push asia-northeast1-docker.pkg.dev/cloudrun-healthcheck-sample/cloud-run-source-deploy/hello:latest
```

deploy:

```
gcloud run deploy hello \
  --image asia-northeast1-docker.pkg.dev/cloudrun-healthcheck-sample/cloud-run-source-deploy/hello:latest \
  --allow-unauthenticated \
  --min-instances 1
```

YAML:

```yml
spec:
  template:
    metadata:
    spec:
      containers:
        image: IMAGE_URL
        startupProbe:
          httpGet:
            path: /startup
          initialDelaySeconds: 10
          timeoutSeconds: 1
          failureThreshold: 30
          periodSeconds: 1
```

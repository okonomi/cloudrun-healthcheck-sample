# Cloud Run health check sample

https://cloud.google.com/run/docs/configuring/healthchecks

build:

```
docker buildx build \
  --platform linux/amd64 \
  -t asia-northeast1-docker.pkg.dev/cloudrun-healthcheck-sample/cloudrun-healthcheck-sample/hello:latest \
  .
```

push:

```
docker push asia-northeast1-docker.pkg.dev/cloudrun-healthcheck-sample/cloudrun-healthcheck-sample/hello:latest
```

deploy:

```
gcloud run deploy hello \
  --image asia-northeast1-docker.pkg.dev/cloudrun-healthcheck-sample/cloudrun-healthcheck-sample/hello:latest \
  --allow-unauthenticated
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
            path: /health
          initialDelaySeconds: 10
          timeoutSeconds: 1
          failureThreshold: 30
          periodSeconds: 5
```

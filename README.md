# Cloud Run health check sample

https://cloud.google.com/run/docs/configuring/healthchecks

deploy:

```
gcloud run deploy hello --source . \
    --allow-unauthenticated
```

docker buildx build \
--platform linux/arm64 \
-t asia-northeast1-docker.pkg.dev/cloudrun-healthcheck-sample/cloud-run-source-deploy/hello:latest \
.

gcloud run deploy hello \
--image asia-northeast1-docker.pkg.dev/cloudrun-healthcheck-sample/cloud-run-source-deploy/hello:latest

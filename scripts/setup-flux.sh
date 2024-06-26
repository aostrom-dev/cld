set -e

echo "[...] Setting up flux..."

## Note: We want for the service to use SSH instead of HTTPS (github tokens expires FAST)
flux bootstrap github \
  --components-extra=image-reflector-controller,image-automation-controller \
  --token-auth=false \
  --owner=aostrom-dev \
  --repository=cld \
  --branch=main \
  --path=clusters/cld
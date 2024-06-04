set -e

echo "[...] Creating cluster..."

gcloud beta container \
    --project "cld-kubectl" clusters create "test-cluster" \
    --zone "europe-west1-b" --no-enable-basic-auth \
    --num-nodes "3" --machine-type "g1-small" --image-type "COS_CONTAINERD" \
    --disk-type "pd-balanced" --disk-size "32" --metadata disable-legacy-endpoints=true \
    --enable-ip-alias --network "projects/cld-kubectl/global/networks/default" --subnetwork "projects/cld-kubectl/regions/europe-west1/subnetworks/default" \
    --no-enable-intra-node-visibility \
    --security-posture=standard --no-enable-master-authorized-networks \
    --addons HorizontalPodAutoscaling,HttpLoadBalancing,GcePersistentDiskCsiDriver \
    --enable-autoupgrade --enable-autorepair --binauthz-evaluation-mode=DISABLED \
    --enable-shielded-nodes --node-locations "europe-west1-b"

echo "[ v ] Created cluster!"
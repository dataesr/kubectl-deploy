#!/bin/sh

set -e

echo "$KUBE_CONFIG" | base64 -d > /tmp/kubeconfig
export KUBECONFIG=/tmp/kubeconfig
echo "Restarting deployment/$1"
exec /usr/bin/kubectl rollout restart deployment/"$1"

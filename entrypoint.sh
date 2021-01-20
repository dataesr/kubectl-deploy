#!/bin/sh -l

set -e
echo "Decode kube config file"
echo "$KUBE_CONFIG" | base64 -d > /tmp/kubeconfig
echo "export kubeconfig"
export KUBECONFIG=/tmp/kubeconfig
echo "Restarting deployment/$1"
exec /usr/bin/kubectl rollout restart deployment/$1

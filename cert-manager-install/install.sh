#!/usr/bin/env bash

set -euo pipefail

function install()
{

  helm upgrade --install \
  -f ./values.yaml \
  cert-manager jetstack/cert-manager \
  --set global.leaderElection.namespace=cert-manager \
  --namespace cert-manager \
  --create-namespace 
}

install




# helm install --create-namespace --namespace cert-manager --set installCRDs=true --set global.leaderElection.namespace=cert-manager cert-manager jetstack/cert-manager
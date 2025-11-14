#!/usr/bin/env bash

set -euo pipefail

# Function to print info
info() {
    echo -e "\033[1;34m[LAUNCH]\033[0m $1"
}

SERVICES=("caddy" "immich" "jellyfin" "syncthing" "actual")
EXTENDED_SERVICES=("duplicati")
BASE_DIR=~/homelab-services

for service in "${SERVICES[@]}"; do
    info "Starting $service"
    (cd "$BASE_DIR/$service" && docker compose up -d)
done

if [[ "${1:-}" == "-a" ]]; then
  info "luanching extended services"
  for service in "${EXTENDED_SERVICES[@]}"; do
    info "Starting $service"
    (cd "$BASE_DIR/$service" && docker compose up -d)
  done
fi



info "All services are up"


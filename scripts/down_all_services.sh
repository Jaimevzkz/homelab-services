#!/usr/bin/env bash

set -euo pipefail

# Function to print info
info() {
    echo -e "\033[1;34m[DOWN]\033[0m $1"
}

SERVICES=("caddy" "immich" "jellyfin" "syncthing" "actual")
EXTENDED_SERVICES=("duplicati")
BASE_DIR=~/homelab-services

for service in "${SERVICES[@]}"; do
    info "Shutting down $service"
    (cd "$BASE_DIR/$service" && docker compose down)
done

if [[ "${1:-}" == "-a" ]]; then
  info "down extended services"
  for service in "${EXTENDED_SERVICES[@]}"; do
    info "Shutting down $service"
    (cd "$BASE_DIR/$service" && docker compose down)
  done
fi


info "All services shut down"


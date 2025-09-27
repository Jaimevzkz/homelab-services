#!/usr/bin/env bash

set -euo pipefail

# Function to print info
info() {
    echo -e "\033[1;34m[INFO]\033[0m $1"
}

SERVICES=("caddy" "immich" "jellyfin")
BASE_DIR=~/homelab-services

for service in "${SERVICES[@]}"; do
    info "Starting $service"
    (cd "$BASE_DIR/$service" && docker compose up -d)
done

info "All services are up"


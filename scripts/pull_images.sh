#!/usr/bin/env bash

set -e  # Exit on error
set -o pipefail

# Function to print info
info() {
    echo -e "\033[1;34m[INFO]\033[0m $1"
}

info "Pull Caddy"
cd ~/homelab-services/caddy/
docker compose pull

info "Pull Immich"
cd ~/homelab-services/immich/
docker compose pull

info "Pull Jellyfin"
cd ~/homelab-services/jellyfin/
docker compose pull

info "All services pulled"

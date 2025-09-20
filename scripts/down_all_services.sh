#!/usr/bin/env bash

set -e  # Exit on error
set -o pipefail

# Function to print info
info() {
    echo -e "\033[1;34m[INFO]\033[0m $1"
}

info "Shutting down caddy"
cd ~/homelab-services/caddy/
docker-compose down

info "Shutting down immich"
cd ~/homelab-services/immich/
docker-compose down

info "Shutting down plex"
cd ~/homelab-services/plex/
docker-compose down

info "All services shut down"

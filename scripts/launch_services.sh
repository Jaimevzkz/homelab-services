#!/usr/bin/env bash

set -e  # Exit on error
set -o pipefail

# Function to print info
info() {
    echo -e "\033[1;34m[INFO]\033[0m $1"
}

info "Caddy UP"
cd ~/homelab-services/caddy/
sudo docker compose up -d


info "Immich UP"
cd ~/homelab-services/immich/
sudo docker compose up -d

info "All services up"

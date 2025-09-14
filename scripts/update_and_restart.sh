#!/usr/bin/env bash

set -e  # Exit on error
set -o pipefail

# Function to print info
info() {
    echo -e "\033[1;34m[INFO]\033[0m $1"
}

info "Update And Restart"
~/homelab-services/scripts/down_all_services.sh
~/homelab-services/scripts/pull_images.sh
~/homelab-services/scripts/launch_services.sh

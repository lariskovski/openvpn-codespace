#!/usr/bin/env bash
set -e

# Switch to the .devcontainer folder
# cd "$( dirname "${BASH_SOURCE[0]}" )"
# cd .devcontainer

# Create a temporary directory
mkdir -p .devcontainer/openvpn

# cd .devcontaineropenvpn

# Save the configuration from the secret if it is present
if [ ! -z "${OPENVPN_CONFIG}" ]; then 
    echo "${OPENVPN_CONFIG}" > .devcontainer/openvpn/vpnconfig.ovpn
fi

# Save the auth configuration from the secret if it is present
if [ ! -z "${OPENVPN_AUTH}" ]; then 
    echo "${OPENVPN_AUTH}" > .devcontainer/openvpn/auth
fi

#!/usr/bin/env bash
set -euo pipefail

NODE_VERSION="${NODE_VERSION:-22}"
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NVM_VERSION="0.39.7"

ensure_nvm() {
    export NVM_DIR="$HOME/.nvm"
    if [ -s "$NVM_DIR/nvm.sh" ]; then
        # shellcheck disable=SC1090
        . "$NVM_DIR/nvm.sh"
        return
    fi

    echo "Installing nvm ${NVM_VERSION}..."
    curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh" | bash
    # shellcheck disable=SC1091
    . "$NVM_DIR/nvm.sh"
}

ensure_node() {
    echo "Ensuring Node.js ${NODE_VERSION} via nvm..."
    nvm install "${NODE_VERSION}"
    nvm use "${NODE_VERSION}"

    echo "Updating npm to latest..."
    npm install -g npm@latest
}

install_dependencies() {
    cd "$PROJECT_ROOT"
    echo "Installing project dependencies (npm ci)..."
    npm ci
}

run_dev_server() {
    cd "$PROJECT_ROOT"
    echo "Starting Vue dev server..."
    npm run serve
}

echo "Running project setup..."
ensure_nvm
ensure_node
install_dependencies

if [ "${1:-}" = "--serve" ]; then
    run_dev_server
else
    echo "Setup complete. Run 'npm run serve' to start the dev server."
fi

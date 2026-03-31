#!/bin/sh
set -e

BASE_URL="https://github.com/27-GROUP/kveritas-releases/raw/main/bin"

echo "K-Veritas CLI Installer"
echo ""
echo "Select your platform:"
echo "  1) Linux x86_64"
echo "  2) Linux ARM64"
echo "  3) macOS Intel"
echo "  4) macOS Apple Silicon"
echo ""
printf "Enter choice [1-4]: "
read choice

case "$choice" in
    1) BINARY="kveritas-linux-amd64" ;;
    2) BINARY="kveritas-linux-arm64" ;;
    3) BINARY="kveritas-darwin-amd64" ;;
    4) BINARY="kveritas-darwin-arm64" ;;
    *) echo "Invalid choice."; exit 1 ;;
esac

DOWNLOAD_URL="${BASE_URL}/${BINARY}"
TARGET_DIR="/usr/local/bin"

echo ""
echo "Downloading ${BINARY}..."
curl -fsSL "$DOWNLOAD_URL" -o /tmp/kveritas
chmod +x /tmp/kveritas

echo "Installing to ${TARGET_DIR}/kveritas (requires sudo)..."
sudo mv /tmp/kveritas "${TARGET_DIR}/kveritas"

echo ""
echo "K-Veritas installed. Run 'kveritas --help' to get started."

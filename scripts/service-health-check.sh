#!/usr/bin/env bash

# Simple Linux service health checker
# Usage: ./service-health-check.sh [service]
# Example: ./service-health-check.sh nginx

SERVICE="${1:-nginx}"

echo "=== Service Health Check: $SERVICE ==="

if ! command -v systemctl >/dev/null 2>&1; then
  echo "[ERROR] systemctl is not available on this system."
  exit 2
fi

if systemctl is-active --quiet "$SERVICE"; then
  echo "[OK] $SERVICE is active."
else
  echo "[WARN] $SERVICE is not active."
  echo
  echo "--- Service status ---"
  systemctl status "$SERVICE" --no-pager -l 2>&1 | head -n 15
  echo
  echo "--- Recent logs ---"
  journalctl -u "$SERVICE" -n 10 --no-pager 2>&1
  exit 1
fi

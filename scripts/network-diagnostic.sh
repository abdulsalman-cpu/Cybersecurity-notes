#!/usr/bin/env bash

# Layered Linux network diagnostic helper.
# Usage: ./network-diagnostic.sh [hostname]
# Example: ./network-diagnostic.sh example.com

TARGET="${1:-example.com}"

section() {
  printf "\n=== %s ===\n" "$1"
}

section "Interfaces / IPv4"
ip -4 addr show 2>/dev/null || true

section "Routing"
ip route 2>/dev/null || true

section "Route decision"
ip route get 1.1.1.1 2>/dev/null || true

section "Neighbor table"
ip neigh 2>/dev/null || true

section "DNS configuration"
if command -v resolvectl >/dev/null 2>&1; then
  resolvectl status 2>/dev/null | head -n 35
else
  cat /etc/resolv.conf 2>/dev/null || true
fi

section "DNS lookup: $TARGET"
if command -v dig >/dev/null 2>&1; then
  dig +short "$TARGET"
elif command -v getent >/dev/null 2>&1; then
  getent hosts "$TARGET"
else
  echo "No dig or getent command found."
fi

section "Listening TCP/UDP sockets"
ss -tulpn 2>/dev/null | head -n 30 || true

echo
echo "Diagnostic collection complete."
echo "Next step: use the evidence to identify the failing layer before making changes."

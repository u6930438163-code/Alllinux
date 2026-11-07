#!/usr/bin/env bash
set -euo pipefail
# Import GPL-3.0 AILinux client without merging it with Mara_OS.
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="$ROOT/upstream/ailinux-client"
if [[ -e "$DEST" ]]; then
  echo "Destination already exists: $DEST" >&2
  exit 1
fi
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
git clone --depth 1 https://github.com/derleiti/ailinux-client.git "$TMP/client"
test -f "$TMP/client/LICENSE" || { echo "Missing upstream LICENSE" >&2; exit 1; }
grep -Eiq 'GNU GENERAL PUBLIC LICENSE|GPL' "$TMP/client/LICENSE" || { echo "Unexpected license; manual review required" >&2; exit 1; }
SHA="$(git -C "$TMP/client" rev-parse HEAD)"
mkdir -p "$DEST"
cp -a "$TMP/client/." "$DEST/"
rm -rf "$DEST/.git"
printf 'Upstream: https://github.com/derleiti/ailinux-client\nCommit: %s\nLicense: GPL-3.0; see LICENSE\n' "$SHA" > "$DEST/UPSTREAM_SOURCE.txt"
echo "Imported $SHA into $DEST. Review changes and commit explicitly."

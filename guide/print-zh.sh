#!/usr/bin/env bash
# Render guide/zh-guide.html to the Chinese A4 PDF.
# Needs Google Chrome (or Chromium) and the fonts referenced in zh-guide.html:
#   Inter (this environment: /usr/share/fonts/truetype/macos/)
#   WenQuanYi Micro Hei
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
OUT="$ROOT/grok-bot-guide-by-spacex-engineers.pdf"
CHROME="${CHROME:-google-chrome}"
PROFILE="${TMPDIR:-/tmp}/grokbot-zh-pdf-profile"
rm -rf "$PROFILE"
mkdir -p "$PROFILE"

set +e
timeout 45 "$CHROME" \
  --headless=new \
  --disable-gpu \
  --no-sandbox \
  --disable-extensions \
  --disable-background-networking \
  --disable-sync \
  --disable-component-update \
  --metrics-recording-only \
  --no-first-run \
  --user-data-dir="$PROFILE" \
  --no-pdf-header-footer \
  --run-all-compositor-stages-before-draw \
  --virtual-time-budget=15000 \
  --print-to-pdf="$OUT" \
  "file://$ROOT/zh-guide.html"
status=$?
set -e
if [[ ! -s "$OUT" ]]; then
  echo "print failed, chrome exit $status" >&2
  exit 1
fi
python3 - "$OUT" <<'PY'
import sys
from pathlib import Path
try:
    import pymupdf as fitz
except ImportError:
    import fitz
path = Path(sys.argv[1])
doc = fitz.open(path)
assert doc.page_count == 24, doc.page_count
print(f"wrote {path} ({path.stat().st_size} bytes, {doc.page_count} pages)")
PY

#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
index_file="$root_dir/index.html"

if [[ ! -f "$index_file" ]]; then
  echo "index.html not found at $index_file" >&2
  exit 1
fi

mapfile -t urls < <(
  rg -o 'https://calendar\.google\.com/calendar/(embed|ical)/[^"\s]+' "$index_file" | sort -u
)

if [[ ${#urls[@]} -eq 0 ]]; then
  echo "No calendar URLs found in $index_file" >&2
  exit 1
fi

failures=0
for url in "${urls[@]}"; do
  status=$(curl -sS -o /dev/null -w "%{http_code}" -L "$url" || true)
  if [[ "$status" =~ ^2|^3 ]]; then
    echo "OK [$status] $url"
  else
    echo "FAIL [$status] $url" >&2
    failures=$((failures + 1))
  fi
done

if [[ $failures -gt 0 ]]; then
  echo "$failures link(s) failed" >&2
  exit 1
fi

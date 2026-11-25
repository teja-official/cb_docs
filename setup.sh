#!/usr/bin/env bash
# Create a virtualenv, install dependencies and run a strict build.
set -e
#uo pipefail

cd "$(dirname "$0")"

# if ! command -v python3 >/dev/null 2>&1; then
#   echo "Python 3.9+ is required." >&2
#   exit 1
# fi

# python3 -m venv .venv
# shellcheck disable=SC1091
# source .venv/bin/activate
pip install -q -r requirements.txt
mkdocs build --strict

echo ""
echo "Done. Next:"
echo "  source .venv/bin/activate"
echo "  mkdocs serve    # http://127.0.0.1:8000"

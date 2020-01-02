#!/bin/bash

set -eux
set -o pipefail

DIR=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
cd "$DIR"

TARGET=~/Desktop/_merged
mkdir -p "$TARGET"

find . -name '*.*' -type f -exec mv '{}' "$TARGET" \;

#!/bin/bash
cd "$(dirname "$0")"

if [ ! -f build/np3dp-v2 ]; then
    echo "Binary not found. Run: mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release && make -j8"
    exit 1
fi

MODEL="${1:-costa_minimal_surface/}"
# ensure trailing slash
[[ "$MODEL" != */ ]] && MODEL="$MODEL/"

exec ./build/np3dp-v2 "$MODEL"

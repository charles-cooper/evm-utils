#!/usr/bin/env bash
# compile and run an LLL file
set -Eeuxo pipefail
file="$1"
vyper -f bytecode "${file}" | tail -c+3 | head -c-1 > run.evm
evm --codefile run.evm --input $2 --debug run

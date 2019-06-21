#!/usr/bin/env bash
set -Eeuxo pipefail
file="$1"
vyper-lll -f bytecode "${file}" | tail -c+3 > run.evm
evm --codefile run.evm --debug run

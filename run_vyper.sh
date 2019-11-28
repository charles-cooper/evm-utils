#!/usr/bin/env bash
# compile and run an LLL file
set -Eeuxo pipefail
file="$1"
vyper -f bytecode_runtime "${file}" \
  | tail -c+3 `# strip leading 0x` \
  | head -c-1 `# strip trailing newline` \
  > run.evm
evm --codefile run.evm --input $2 --debug run

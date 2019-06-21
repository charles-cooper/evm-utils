#!/usr/bin/env bash
set -Eeuxo pipefail
# mint() 1249c58b
# foo() c2985578
# iprefer() 0x79e4e024
#evm --codefile new.evm --input c2985578 --debug run
evm --codefile $1 --input $2 --debug run

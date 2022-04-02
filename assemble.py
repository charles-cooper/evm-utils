#!/usr/bin/env python

# assembles vyper-flavored EVM assembly

from vyper.ir.compile_ir import assembly_to_evm
import sys

with open(sys.argv[1]) as f:
    ops = f.read().split()

for i, x in enumerate(ops):
    try:
        ops[i] = int(x)
    except:
        pass

print(assembly_to_evm(ops)[0].hex())

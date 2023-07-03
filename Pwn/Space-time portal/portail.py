from z3 import *

foREVer = Solver()

x = BitVec("0", 64)

foREVer.add(((x * 0x726176656e70776e) & 0xffffffffffffffff) == 0x407045989b3284ae)

if foREVer.check() == sat:
    solution = foREVer.model()
    solution = hex(int(str(solution[x])))
    solution = solution[2:]

    value = ""
    i = int(len(solution) / 2)
    while i > 0:
        i -= 1
        y = solution[(i*2):(i*2) + 2]
        value += chr(int("0x" + y, 16))

    print("Now I think, I understand: " + value)
else:
    print("Not solvable, I would recommend crying, a lot")

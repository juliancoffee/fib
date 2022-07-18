import sys
from . import programms


progs = programms.get_progs("src/naive")
if "--fresh" in sys.argv:
    for prog in progs:
        programms.clean(prog[0])

print("Prepare")
for prog in progs:
    programms.make(prog[0])

print("", "====Run====", "", sep="\n")
for prog in progs:
    programms.run(prog[0], sys.argv[1])

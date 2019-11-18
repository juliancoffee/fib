import sys
from . import programms


progs = programms.get_progs("src/naive")
for prog in progs:
    programms.make(prog[0])

for prog in progs:
    programms.run(prog[0], sys.argv[1])

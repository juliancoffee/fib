from typing import Tuple

import sys
import shutil
from os.path import dirname

from .make import make
from .run import run


if __name__ == "__main__":
    try:
        arg = sys.argv[1]
    except IndexError:
        arg = "default"

    for prog in progs:
        if prog.needed:
            make(
                    target="build/{}/{}".format(prog.algorithm, prog.exe_file),
                    src="src/{}/{}".format(prog.algorithm, prog.src_file),
                    cmds=prog.compile_cmds,
                    )

            for prog in progs:
                if prog.runned:
                    run(
                            target="build/{}/{}".format(prog.algorithm, prog.exe_file),
                            lang=prog.language,
                            alg=prog.algorithm,
                            arg=arg if arg != "default" else prog.default_arg,
                            cmds=prog.run_cmds,
                            )

from typing import Tuple

import sys
import shutil
from os.path import dirname

from .make import make
from .run import run

translator_by_speed = {
        1: {
            "C": {
                "ext": ".c",
                "compiler": lambda src, exe: f"clang {src} -O3 -o {exe}",
                "deps": "clang",
                },
            "Rust": {
                "ext": ".rs",
                "compiler": lambda src, exe: f"rustc {src} -C opt-level=s -o {exe}",
                "deps": "rustc",
                },
            "Zig": {
                "ext": ".zig",
                "compiler": lambda src, exe:
                    f"zig build-exe --strip --release-fast --name {exe} {src}; "
                    f"rm -f main.o {exe}.o",
                "deps": "zig",
                },
            "Nim": {
                "ext": ".nim",
                "compiler": lambda src, exe:
                    f"nim c -d:release -o:{exe} {src}; "
                    f"rm -rf {dirname(src)}/nimcache",
                "deps": "nim",
                },
            }
        2: {
            "Julia": {
            "ext": ".jl",
            "compiler": lambda src, exe: makesh(f"julia {src} \$1", exe),
            "deps": "julia",
            },
        },
    }
'''
    "Java": ".java",
    "Ada": ".adb",
    "Ocaml": ".ml",
    "Pascal": ".pas",
    "Haskell": ".hs",
    "Go": ".go",
    "LuaJit": ".lua",

    "Node Js": ".js",
    "Clojure": ".clj",
    "PyPy": ".py",

    "Erlang": ".erl",
    "Scheme": ".scm",

    "Awk": ".awk",
    "Perl": ".pl",
    "CPython": ".py",
    "Elisp": ".el",

    "Viml": ".vim",
'''

lang_speed = {
        1: ("C", "Rust", "Zig", "Nim", ),
        2: ("Julia", "Java", "Ada", "Ocaml", "Pascal", "Haskell", "Go", "LuaJit", ),
        3: ("NodeJs", "Clojure", "PyPy", ),
        4: ("Erlang", "Scheme", ),
        5: ("Awk", "Perl", "CPython", "Elisp", ),
        6: ("Viml",),
        }

algorithms_data = {
        "naive": {
            "translators": [
                "C", "Rust", "Zig", "Nim", "Julia",
                '''
            "Java", "Ada", "Ocaml", "Pascal", "Haskell", "Go", "LuaJit",
            "Node Js", "Clojure", "PyPy",
            "Erlang", "Scheme",
            "Awk", "Perl", "CPython", "Elisp",
            "Viml",
            '''
            ],
            "default arg": {
                **{lvl_speed: 45 for lvl_speed in range(1, 5)},
                **{5: 30},
                **{6: 20},
                },
            },
        }




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

from typing import Tuple

import os
from os import path
import shutil


def makesh(cmd: str, exe: str) -> str:
    """Make shell script for interpreted language

    Return cmd with echo of shebang and command to executable path
    """
    env_sh = shutil.which("env") + " sh"
    make_cmd = fr'echo -e "#!{env_sh}\n{cmd}" > {exe}'
    return make_cmd


def make(
    target_path: str,
    *,
    source_path: str,
    compiler_cmd: str,
):

    if not path.exists(path.dirname(target_path)):
        os.makedirs(path_to_target, mode=0o761)

    if not path.exists(src):
        print("Source not {} exists".format(src))
        return
    if path.exists(target):
        print("Target {} already done".format(target))
        return

    for cmd in compiler_cmd.split(";"):
        print(cmd)

    os.system(compiler_cmd)

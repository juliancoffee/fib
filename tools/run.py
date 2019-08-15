from typing import Tuple
import os


def timer(exe: str, arg: str,
          form=r"\nTime = %e\nUser = %U\nSystem = %S\nSize = %M (kb)") -> int:
    """Run program and measure

    Return integer result of runned program with given argument
    """

    cmd = f'/usr/bin/time -f"{form}" ./{exe} {arg}'
    return os.system(cmd)

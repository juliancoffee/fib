''' Module to work with program's directories
'''
import os
import subprocess

from typing import Tuple, Dict, List
from .properties import get_props


def get_progs(path: str) -> List[Tuple[str, Dict]]:
    ''' Get list of tuples of path to programs and properties
    '''
    progs: List[Tuple[str, Dict]] = []
    for directory in filter(lambda f: not (f == "properties.txt"),
                            os.listdir(path)):
        dir_path = f"{path}/{directory}"
        if "properties.txt" in os.listdir(dir_path):
            props = get_props(f"{dir_path}/properties.txt")
            if "variants" in props:
                progs += get_progs(dir_path)
            else:
                progs.append((dir_path, props))
        else:
            progs.append((dir_path, {}))
    return progs


def checked(path: str, reason: str, optional="", shell="bash"):
    cmd: List[str] = [shell, "deps.sh", reason]
    if optional:
        cmd += ["-t", optional]
    if subprocess.run(cmd, cwd=path, capture_output=True).returncode == 1:
        return False
    return True


def make(path: str, compiler="", shell="bash"):
    '''Make programm by makefile in given directory
    '''
    print("> ", path)
    if "makefile" not in os.listdir(path):
        return
    cmd = ["make"]
    if not checked(path, reason="compile", optional=compiler, shell=shell):
        print("Dependencies not installed")
        return
    if compiler:
        cmd.append(f"CC={compiler}")
    subprocess.run(cmd, cwd=path, check=True)


def clean(path: str):
    '''Delete executables by makefile clean in given directory
    '''
    if "makefile" not in os.listdir(path):
        return
    cmd = ["make", "clean"]
    subprocess.run(cmd, cwd=path, check=True)


def run(path: str, arg: str, shell="bash", interpreter=""):
    '''Run program with given arguments

    Default shell is bash, but you can put another argument
    '''
    print("> ", path)
    if int(arg) < 1:
        print("Arguments must be greater than 0")
        return
    if not checked(path, reason="run", optional=interpreter, shell=shell):
        print("Dependencies not installed")
        return
    cmd = [shell, "run.sh", arg]
    if interpreter:
        cmd += ["-t", interpreter]
    subprocess.run(cmd, cwd=path, check=True)

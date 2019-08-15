from typing import Dict


@dataclass
class Prog:
    algorithm: str
    language: str
    lang_speed: int
    default_arg: str
    path_src: str
    path_exe: str
    compile_cmds: Tuple[str]


def speed_of(language: str, speed_table: Dict[int, tuple]) -> int:
    for speed_lvl in speed_table:
        if lang in speed_table[speed_lvl]:
            return speed_lvl

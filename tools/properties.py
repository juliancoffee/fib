'''
Work with properties.txt
'''
from typing import Dict, List
from dataclasses import dataclass


@dataclass
class Property:
    '''Property struct with name and values
    '''
    name: str
    values: list


def get_prop(line: str) -> Dict[str, List]:
    '''Parse property from given line
    '''
    prop_line: List = list(map(lambda s: s.strip(), line.split("=")))
    values: map = map(lambda s: s.strip(), prop_line[1].split(","))
    name: str = prop_line[0]

    return Property(
        name=name,
        values=list(values),
    )


def get_props(filename: str) -> Dict[str, List]:
    '''Parse properties from given filename

    Return dict with properties
    '''
    props = {}
    with open(filename) as f:
        for line in f:
            prop = get_prop(line)
            props[prop.name] = prop.values

    return props

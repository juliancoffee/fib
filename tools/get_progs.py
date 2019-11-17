# coding: utf-8
def get_progs(path):
    progs = []
    for dir in filter(lambda f: not (f == "properties.txt"), os.listdir(path)):
        if "properties.txt" in os.listdir(f"{path}/{dir}"):
            props = get_props(f"{path}/{dir}/properties.txt")
            if "variants" in props:
                    progs += get_progs(f"{path}/{dir}")
            else:
                progs.append((f"{path}/{dir}", props))
        else:
            progs.append((f"{path}/{dir}", None))
    return progs
    

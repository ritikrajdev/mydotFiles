#!/usr/bin/python3

from copy import deepcopy
from enum import Enum
from os import environ
from pathlib import Path


class Color(Enum):
    red = '\033[0;31m'
    green = '\033[0;32m'
    normal = '\033[0m'
    bold = '\033[1m'


def get_env_variable(name: str, fallback: str=''):
    try:
        return environ[name]
    except KeyError:
        return fallback

def link_with_backup(source: Path, dest: Path):
    while True:
        try:
            dest.symlink_to(source, target_is_directory=source.is_dir())
            print(dest, f'{Color.green.value}links to{Color.normal.value}', source)
        except FileExistsError:
            print(dest.name, f'{Color.red.value}renaming to{Color.normal.value}{Color.bold.value}', dest.name + '.bak{Color.normal.value}')
            dest_copy = deepcopy(dest) 
            dest_copy.rename(dest.name + '.bak')
            continue
        else:
            break

def create_dir(path: Path):
    try:
        path.mkdir(parents=True)
    except FileExistsError:
        pass

def main():
    DOTFILES_DIR = Path(__file__).parent
    HOME_DIR = Path.home()
    CONFIG_HOME =  Path(get_env_variable('XDG_CONFIG_HOME', str(HOME_DIR /'.config')))
    DATA_HOME =  Path(get_env_variable('XDG_DATA_HOME', str(HOME_DIR / '.local' / 'share')))
    SSH_HOME = HOME_DIR / '.ssh'

    create_dir(CONFIG_HOME)
    create_dir(DATA_HOME)
    create_dir(SSH_HOME)

    # Home Directory Files
    for source in DOTFILES_DIR.iterdir():
        if source.is_file() and source.name[0] == '.' and source.name != '.gitignore':
            dest = HOME_DIR / source.name
            link_with_backup(source, dest)

    # Config, local/share, ssh
    corresponding_dirs = {'.config': CONFIG_HOME, '.local/share': DATA_HOME, '.ssh': SSH_HOME}
    for source_dir, dest_dir in corresponding_dirs.items():
        for source in (DOTFILES_DIR / source_dir).iterdir():
            dest = dest_dir / source.name
            link_with_backup(source, dest)

if __name__ == '__main__':
    main()


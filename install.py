#!/usr/bin/python3

from copy import deepcopy
from enum import Enum
from os import environ, system
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
            print(dest.name, f'{Color.red.value}renaming to{Color.normal.value}', dest.name + '.bak')
            dest_copy = deepcopy(dest) 
            dest_copy.rename(dest.with_suffix('.bak'))
            continue
        else:
            break

def create_dir(path: Path):
    try:
        path.mkdir(parents=True)
    except FileExistsError:
        pass


class NonZeroReturnCodeError(Exception):
    pass

class OSNotArch(Exception):
    pass


def exec_with_exception(command: str):
    print(f'executing "{Color.green.value}{command}{Color.normal.value}"')
    exit_code = system(command)
    if exit_code != 0:
        raise NonZeroReturnCodeError

def main():
    DOTFILES_DIR = Path(__file__).parent
    HOME_DIR = Path.home()
    CONFIG_HOME =  Path(get_env_variable('XDG_CONFIG_HOME', str(HOME_DIR /'.config')))
    DATA_HOME =  Path(get_env_variable('XDG_DATA_HOME', str(HOME_DIR / '.local' / 'share')))
    SSH_HOME = HOME_DIR / '.ssh'
    TOOLS = ['ranger', 'broot', 'zoxide-bin', 'pyenv', 'exa', 'kitty', 'openssh', 'gnupg', 'mdcat', 'neovim', 'neovim-plug', 'ripgrep', 'fish']

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

    try:
        if Path('/bin/pacman').exists():
            exec_with_exception('sudo pacman -S --noconfirm --needed git base-devel') 

            if not Path('/bin/paru').exists():
                print(f'{Color.green.value}Installing{Color.normal.value} paru')
                exec_with_exception('git clone https://aur.archlinux.org/paru-bin.git')
                exec_with_exception('pushd paru-bin; makepkg -sirf --noconfirm; popd')
                exec_with_exception('rm -rf paru-bin')

            exec_with_exception(f'paru -S --needed --noconfirm {" ".join(TOOLS)}')

            print(f'{Color.green.value}Installed{Color.normal.value} base-devel, git, paru, {", ".join(TOOLS)}')

        else:
            raise OSNotArch

    except:
        print('the following packages couldn\'t be installed')
        print(f'{Color.red.value}{" ".join(TOOLS)}{Color.normal.value}')
        print(f'{Color.green.value} Please Install them all{Color.normal.value}')

    if Path('/bin/fish').exists():
        system(str(DOTFILES_DIR / '.config/fish/universal_things_setup.fish'))

    if Path('/bin/broot').exists():
        system('broot init')

if __name__ == '__main__':
    main()


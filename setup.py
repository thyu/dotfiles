from pathlib import Path
import subprocess
import os

def update_symlink(source_path: Path, symlink_path: Path) -> None:
    assert source_path.exists()
    is_dir = source_path.is_dir()
    symlink_path.unlink(missing_ok = True)
    symlink_path.symlink_to(source_path, is_dir)

def main():

    this_path = Path(__file__).parent.resolve()
    home_path = Path.home()

    # install vim configs
    update_symlink(this_path / ".vimrc", home_path / ".vimrc")
    update_symlink(this_path / ".vim", home_path / ".vim")

    # install .bash_profile 
    update_symlink(this_path / ".bash_profile", home_path / ".bash_profile")

main()

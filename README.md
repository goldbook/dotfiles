dotfiles
========
.files for me

## windows (require admin)
    cd C:\User\
    git clone https://github.com/goldbook/dotfiles.git
    mklink .vimrc dotfiles\.vimrc
    mklink .vimrc dotfiles\.gvimrc
    mklink .bash_profile dotfiles\.bash_profile

    cd /d path\to\cmder\config_dir
    mklink ConEmu.xml path\to\dotfiles\ConEmu.xml

    mklink .foo dotfiles\.foo
    ...

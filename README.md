# Setup Steps

***Note***: These steps are not complete.

- Clone this repo, `git clone https://github.com/MJones180/macos_setup.git`, then setup:
    - Symlink source controlled dot files, `ln -s macos_setp/.<file> .<file>`
- Install `brew`, then install:
    - Formulae:
        - `flake8`
        - `fzf`
        - `lazygit`
        - `python@3.9`
        - `python@3.10`
        - `the_silver_searcher`
        - `tree`
        - `vim`
        - `yapf`
    - Casks:
        - `iterm2`
        - `mactex` (`TeX` support)
        - `miniforge` (`conda` with `M1` support)
        - `skim`
- Download `nord` colorscheme for `iTerm2`
- Setup `oh-my-zsh` and `powerlevel10k` for `iTerm2`
    - Will require the manual installation of `oh-my-zsh` plugins
- Clone vim config, `git clone https://github.com/MJones180/vim.git`, then setup:
    - Create `/.vimrc` with line `source ~/vim/config.vim`
    - Install `vim-plug` and run `:PlugInstall` inside `/.vimrc`

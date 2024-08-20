# Setup Steps

***Note***: These steps are not complete.

1. Setup GitHub SSH key:
    1. `ssh-keygen -t rsa -b 4096 -a 100` with name of `github_id_rsa`
    2. Add public key as both auth and signing keys at `https://github.com/settings/keys`
    3. Add to `~/.ssh/config`:
        ```
        Host github.com
            IdentityFile ~/.ssh/github_id_rsa
            User git
        ```
2. If on Bash, switch to ZSH (`https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH`)
3. Clone this repo, `git clone git@github.com:MJones180/macos_setup.git`, then setup:
    - Create `~/.zshrc`
        - Add `source macos_setup/.zshrc` to the first line
        - The conda init should go at the bottom of this file
    - Symlink other source controlled dot files, `ln -s macos_setup/.<file> .<file>`
4. Install the following applications:
    - Arc Browser (`https://arc.net/`)
    - Nord Pass (`https://nordpass.com/download/macos/`)
    - Nord VPN (`https://nordvpn.com/download/mac/`)
    - Edison email (`https://www.edisonmail.com/`)
    - Google Drive (`https://www.google.com/drive/download/`)
5. Install `brew` (`https://brew.sh`), then install:
    - Formulae:
        - `flake8`
        - `fzf`
        - `lazygit`
        - `python@3.9`
        - `python@3.10`
        - `python@3.12`
        - `the_silver_searcher`
        - `tree`
        - `vim`
        - `yapf`
    - Casks:
        - `betterdisplay`
        - `iterm2`
        - `mactex` (`TeX` support)
        - `skim`
        - `zotero`
6. Install `miniforge` (`conda` with `M1` support)
    - If on mac, this can be installed as a `brew` Cask
    - Otherwise, install directly (`https://github.com/conda-forge/miniforge`)
7. Download `nord` colorscheme for `iTerm2`
8. Setup `oh-my-zsh` (`https://github.com/ohmyzsh/ohmyzsh`) for `iTerm2`
    1. The following `oh-my-zsh` plugins will require manual installation:
        - `zsh-syntax-highlighting` (`https://github.com/zsh-users/zsh-syntax-highlighting`)
        - `zsh-autosuggestions` (`https://github.com/zsh-users/zsh-autosuggestions`)
    2. Install `powerlevel10k` (`https://github.com/romkatv/powerlevel10k`)
9. Clone vim config, `git clone git@github.com:MJones180/vim.git`, then setup:
    1. Create `/.vimrc` with line `source ~/vim/config.vim`
    2. Install `vim-plug` and run `:PlugInstall` inside `/.vimrc`

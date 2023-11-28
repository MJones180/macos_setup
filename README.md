# Setup Steps

***Note***: These steps are not complete.

- Setup GitHub SSH key:
    - `ssh-keygen -t rsa -b 4096 -a 100` with name of `github_id_rsa`
    - Add public key as both auth and signing keys at `https://github.com/settings/keys`
    - Add to `~/.ssh/config`:
        ```
        Host github.com
            IdentityFile ~/.ssh/github_id_rsa
            User git
        ```
- Clone this repo, `git clone git@github.com:MJones180/macos_setup.git`, then setup:
    - Symlink source controlled dot files, `ln -s macos_setp/.<file> .<file>`
- Install Brave Browser (`https://brave.com/download/`)
- Install Nord Pass (`https://nordpass.com/download/macos/`)
- Install Nord VPN (`https://nordvpn.com/download/mac/`)
- Install Edison email (`https://www.edisonmail.com/`)
- Install Google Drive (`https://www.google.com/drive/download/`)
- Install Grammarly (`https://app.grammarly.com/apps`)
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
        - `colored-man-pages`
        - `git`
        - `web-search`
        - `zsh-syntax-highlighting`
        - `zsh-autosuggestions`
- Clone vim config, `git clone git@github.com:MJones180/vim.git`, then setup:
    - Create `/.vimrc` with line `source ~/vim/config.vim`
    - Install `vim-plug` and run `:PlugInstall` inside `/.vimrc`
- Add the following to your `~/.zshrc`:
    - Should already contain stuff for `oh-my-zsh`, `powerlevel10k`, `conda` (from `miniforge`), and `fzf`.
    - `set -o vi`
    - `alias lg='lazygit'`
    - `export PATH=/opt/homebrew/bin:$PATH`

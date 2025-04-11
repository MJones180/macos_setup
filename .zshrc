# Look at brew installed packages
export PATH=/opt/homebrew/bin:$PATH

fastfetch --load-config ~/macos_setup/.fastfetch.config.jsonc

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme to use
ZSH_THEME="powerlevel10k/powerlevel10k"

# oh-my-zsh plugins
plugins=(
    colored-man-pages
	git
	web-search
	zsh-syntax-highlighting
	zsh-autosuggestions
)

# Enable oh-my-zsh
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Have the terminal use Vim by default
set -o vi

# Aliases
alias lg='lazygit'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

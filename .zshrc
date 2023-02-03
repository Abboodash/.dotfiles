# Aliases
alias la='ls -lah --color=auto'
alias lh='ls -lh --color=auto'
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias grep='grep --color=auto'

# Use the Vim-like keybindings
bindkey -v

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# Keybindings for substring search plugin. Maps up and down arrows.
bindkey -M main '^[OA' history-substring-search-up
bindkey -M main '^[OB' history-substring-search-down
bindkey -M main '^[[A' history-substring-search-up
bindkey -M main '^[[B' history-substring-search-up

# Keybindings for autosuggestions plugin
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept

# Gray color for autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247'

# fzf settings. Uses sharkdp/fd for a faster alternative to `find`.
FZF_CTRL_T_COMMAND='fd --type f --hidden --exclude .git --exclude .cache'
FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'

# vim-mode settings
MODE_CURSOR_VICMD="green block"
MODE_CURSOR_VIINS="#20d08a blinking bar"
MODE_CURSOR_SEARCH="#ff00ff blinking underline"

MODE_INDICATOR_VIINS='%F{15}--%F{8}INSERT--%f'
MODE_INDICATOR_VICMD='%F{10}--%F{2}NORMAL--%f'
MODE_INDICATOR_REPLACE='%F{9}--%F{1}REPLACE--%f'
MODE_INDICATOR_SEARCH='%F{13}--%F{5}SEARCH--%f'
MODE_INDICATOR_VISUAL='%F{12}--%F{4}VISUAL--%f'
MODE_INDICATOR_VLINE='%F{12}--%F{4}V-LINE--%f'

# Load plugins
source ~/.zplug/init.zsh
zplug "skywind3000/z.lua"
zplug "softmoth/zsh-vim-mode"
zplug "junegunn/fzf", use:"shell/*.zsh"
zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf, use:"*linux*amd64*"
zplug "sharkdp/fd", from:gh-r, as:command, rename-to:fd, use:"*x86_64-unknown-linux-gnu.tar.gz"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug load

# Load Starship
eval "$(starship init zsh)"

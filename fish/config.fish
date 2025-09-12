if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting # suprression message début

# -- AUTOCOMPLETE/HIGHLIGHT --

set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

# -- ALIASES --

source $HOME/.config/fish/aliases.fish

# -- PROMPT --

starship init fish | source

# -- AUTO START --

# Launch the interactive tmux menu if tmux is installed and not already inside tmux
if type -q tmux
    if not set -q TMUX
        source ~/.config/fish/tmux_menu.fish
    end
end

# -- VAR ENV --
set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set TERM "xterm-256color"




set --universal nvm_default_version v23.11.0

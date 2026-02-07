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
# if type -q tmux
#     if not set -q TMUX
#         source ~/.config/fish/tmux_menu.fish
#     end
# end

# -- VAR ENV --
set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set TERM "xterm-256color"





# set -gx PATH /usr/local/texlive/2025/bin/x86_64-linux $PATH
# set -gx MANPATH /usr/local/texlive/2025/texmf-dist/doc/man $MANPATH
# set -gx INFOPATH /usr/local/texlive/2025/texmf-dist/doc/info $INFOPATH

# PATH pour TeX Live
set -gx PATH /usr/local/texlive/2025/bin/x86_64-linux $PATH

# MANPATH : Linux + TeX Live
set -gx MANPATH /usr/share/man /usr/local/share/man /usr/local/texlive/2025/texmf-dist/doc/man
set -gx INFOPATH /usr/local/share/info /usr/local/texlive/2025/texmf-dist/doc/info



set -gx PATH /usr/racket/bin $PATH


set --universal nvm_default_version v23.11.0

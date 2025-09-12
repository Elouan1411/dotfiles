# Fish config: interactive tmux session management
if type -q tmux
    if not set -q TMUX
        function tmux_menu
            echo ""
            echo "Options:"
            echo "  [Enter] -> restart main session (delete if exists)"
            echo "  [m+Enter] -> attach to main session (keep it)"
            echo "  [t+Enter] -> create a temporary session"
            echo "  [d+Enter] -> delete all sessions and recreate main"
            read -l choice

            switch $choice
                case ""
                    # Restart 'main' session
                    tmux has-session -t main 2>/dev/null; and tmux kill-session -t main
                    exec tmux new -s main

                case "m"
                    # Attach to main session without deleting
                    tmux has-session -t main 2>/dev/null; or tmux new -s main
                    exec tmux attach -t main

                case "t"
                    # Create a new temporary session with next free number
                    set i 0
                    while tmux has-session -t $i 2>/dev/null
                        set i (math $i + 1)
                    end
                    exec tmux new -s $i

                case "d"
                    # Delete all sessions (main + temps)
                    for sess in (tmux ls 2>/dev/null | cut -d: -f1)
                        tmux kill-session -t $sess
                    end
                    # Create a new main session
                    exec tmux new -s main

                case "*"
                    # Default: create a temporary session
                    set i 0
                    while tmux has-session -t $i 2>/dev/null
                        set i (math $i + 1)
                    end
                    exec tmux new -s $i
            end
        end

        tmux_menu
    end
end

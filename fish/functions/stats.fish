function stats
    if test (count $argv) -eq 0
        echo "Usage: stats \"js|html|css\""
        return 1
    end
    set input_exts $argv[1]
    set extensions (string split "|" $input_exts)
    set total_lines 0
    echo "--- Statistiques par extension ---"
    for ext in $extensions
        set lines (find . -type d \( -name "node_modules" -o -name "target" \) -prune -o -type f -name "*.$ext" -exec cat {} + 2>/dev/null | wc -l)
        echo ".$ext : $lines lignes"
        set total_lines (math $total_lines + $lines)
    end
    echo "----------------------------------"
    echo "TOTAL : $total_lines lignes"
end

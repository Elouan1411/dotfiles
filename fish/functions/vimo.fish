# vimo function:
# - If no argument is provided, opens Vim in the current directory.
# - If a directory is provided, opens Vim in that directory.
# - If a file is provided, opens Vim to edit that file in a new Kitty terminal.
function vimo
    set target_path (pwd)
    if test (count $argv) -gt 0
        set target_path $argv[1]
    end
    kitty --detach fish -i -c "cd (dirname '$target_path'); vim (basename '$target_path')"
end


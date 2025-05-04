# dupvim: open a new Kitty terminal with Vim at the root of the current Git project (or current dir if not in a Git repo)
function dupvim
    # Find the Git root or use current dir
    set root (git rev-parse --show-toplevel ^/dev/null 2>/dev/null; or pwd)
    kitty --detach fish -i -c "cd '$root'; vim"
end


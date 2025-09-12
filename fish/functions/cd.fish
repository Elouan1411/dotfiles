function cd
        # Change to the specified directory
        if test (count $argv) -eq 0
            builtin cd 
        else
            builtin cd "$argv[1]"
        end
        # List the contents of the directory
        ls
end

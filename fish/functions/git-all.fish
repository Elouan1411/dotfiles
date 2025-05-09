function git-all
    set use_fac 0
    set message ""

    for arg in $argv
        switch $arg
            case '-f' '--fac'
                set use_fac 1
            case '*'
                if test -z "$message"
                    set message $arg
                else
                    set message "$message $arg"
                end
        end
    end

    if test -z "$message"
        echo "Usage: git-all [-f|--fac] 'Commit message'"
        return 1
    end

    git add .
    git commit -m "$message"

    if test $use_fac -eq 1
        git-push-fac
    else
        git push
    end
end


function rm
    set -l args
    set -l files

    # Séparer les options (-r, -f...) et les fichiers
    for arg in $argv
        if string match -qr '^-' -- $arg
            set args $args $arg
        else
            set files $files $arg
        end
    end

    # Créer les dossiers de la corbeille s'ils n'existent pas
    mkdir -p ~/.local/share/Trash/files
    mkdir -p ~/.local/share/Trash/info

    # Copier chaque fichier dans la corbeille
    for file in $files
        if test -e "$file"
            set basefile (basename $file)
            set timestamp (date "+%Y-%m-%dT%H:%M:%S")
            set trashfile ~/.local/share/Trash/files/$basefile-$timestamp

            cp -a $file $trashfile

            echo "[Trash Info]
Path=$(realpath $file)
DeletionDate=$timestamp" > ~/.local/share/Trash/info/(basename $trashfile).trashinfo
        else
            echo "rm: cannot remove '$file': No such file or directory" >&2
        end
    end

    # Appeler la vraie commande rm avec toutes les options
    command rm -i $argv
end

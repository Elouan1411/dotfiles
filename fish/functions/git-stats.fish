function git-stats
    if test (count $argv) -eq 0
        echo "Usage: git-stats \"js|html|css|py\""
        return 1
    end
    set extensions $argv[1]
    echo "📦 Création de l'environnement virtuel..."
    python3 -m venv venv >/dev/null 2>&1
    source venv/bin/activate.fish
    echo "⬇️  Installation des dépendances..."
    pip install --quiet git-fame >/dev/null 2>&1
    echo "📊 Analyse de l'historique Git..."
    git fame --incl ".*\.($extensions)\$" --excl "(node_modules|target)"
    deactivate
    rm -rf venv
    echo "✅ Terminé."
end

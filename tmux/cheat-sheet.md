---

# 📝 Feuille de référence tmux

---

## 🔑 Préfixe principal

* **`Ctrl+b`** → Préfixe pour toutes les commandes
  (Appuie sur `Ctrl+b`, relâche, puis tape la touche suivante)

---

## 🖥️ Fenêtres

| Action                        | Raccourci      | Description                            |
| ----------------------------- | -------------- | -------------------------------------- |
| Créer une nouvelle fenêtre    | `Ctrl+b c`     | Ouvre un nouvel onglet dans la session |
| Changer de fenêtre par numéro | `Ctrl+b <num>` | Va à la fenêtre numéro `<num>`         |
| Fenêtre suivante              | `Ctrl+b n`     | Passe à la fenêtre suivante            |
| Fenêtre précédente            | `Ctrl+b p`     | Passe à la fenêtre précédente          |
| Renommer une fenêtre          | `Ctrl+b ,`     | Donne un nom personnalisé à la fenêtre |
| Fermer la fenêtre             | `Ctrl+b &`     | Ferme la fenêtre courante              |
| Lister toutes les fenêtres    | `Ctrl+b w`     | Affiche un menu des fenêtres           |

---

## 🧩 Panneaux (splits)

| Action                      | Raccourci                | Description                                         |
| --------------------------- | ------------------------ | --------------------------------------------------- |
| Diviser horizontalement     | `Ctrl+b "`               | Crée un panneau en bas                              |
| Diviser verticalement       | `Ctrl+b %`               | Crée un panneau à droite                            |
| Fermer panneau courant      | `Ctrl+b x`               | Supprime le panneau actif                           |
| Déplacer le panneau courant | `Ctrl+b {` ou `Ctrl+b }` | Échanger avec panneau adjacent                      |
| Naviguer entre panneaux     | `Ctrl+b flèches`         | Déplace le curseur dans un autre panneau            |
| Redimensionner panneaux     | `Ctrl+b H/J/K/L`         | Agrandir ou réduire le panneau de 2 colonnes/lignes |
| Réinitialiser layout        | `Ctrl+b Space`           | Change le layout (tiled, even-horizontal, etc.)     |

---

## ⚙️ Configuration et plugins

| Action                | Raccourci       | Description                         |
| --------------------- | --------------- | ----------------------------------- |
| Recharger la config   | `Ctrl+b r`      | Recharge `~/.config/tmux/tmux.conf` |
| Installer plugins     | `Ctrl+b I`      | Installe tous les plugins via TPM   |
| Mettre à jour plugins | `Ctrl+b U`      | Met à jour tous les plugins via TPM |
| Sauvegarder session   | `Ctrl+b Ctrl+s` | Sauvegarde via tmux-resurrect       |
| Restaurer session     | `Ctrl+b Ctrl+r` | Restaure via tmux-resurrect         |


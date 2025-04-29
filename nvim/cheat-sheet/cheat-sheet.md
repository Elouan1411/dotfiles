# 🧠 **Manipulations de base (copier-coller)**
| Action                          | Raccourci              | Explication                                      |
|---------------------------------|-------------------------|--------------------------------------------------|
| Copier vers presse-papier OS    | `"+y`                   | Copie dans le presse-papier système (nécessite `+clipboard`) |
| Coller depuis l’extérieur       | `Ctrl+Shift+V` (terminal) | Colle dans Vim depuis le presse-papier          |
| Copier                         | `y`                     | Copy normal (en fonction du mouvement)           |
| Copier une ligne               | `yy` ou `Y`             | Copie la ligne entière                          |
| Coller après                   | `p`                     | Colle après le curseur                          |
| Coller avant                   | `P`                     | Colle avant le curseur                          |

---

# 📂 **Fichiers et navigation (plugins type Telescope/NvimTree)**
| Action                     | Raccourci       | Explication                               |
|----------------------------|------------------|-------------------------------------------|
| Ouvrir gestionnaire fichiers | `<Space>pv`      | Ouvre l’arborescence de fichiers (type NvimTree) |
| Reculer d’un dossier        | `-`              | Quand tu es dans l’explorateur             |
| Voir fichiers cachés       | `g.`             | Affiche/masque les fichiers cachés         |
| Recherche de fichier       | `<Space>pf`      | Finder-like avec Telescope                 |

---

# 🧭 **Déplacement**
| Raccourci    | Description                                |
|-------------|---------------------------------------------|
| `0`         | Début de ligne                              |
| `^`         | Début de ligne (après indentation)          |
| `$`         | Fin de ligne                                |
| `w` / `W`   | Mot suivant (mot classique / mot large)     |
| `b` / `B`   | Mot précédent                               |
| `e` / `E`   | Fin du mot suivant                          |
| `ge`        | Fin du mot précédent                        |
| `gg`        | Aller en haut du fichier                    |
| `G`         | Aller à la fin du fichier                   |
| `%`         | Aller à la parenthèse fermante (ou ouvrante)|
| `f<char>`   | Va au caractère `char` sur la ligne         |
| `t<char>`   | Va juste **avant** le caractère `char`      |

---

# 🧱 **Édition**
| Raccourci   | Description                                 |
|------------|---------------------------------------------|
| `u`        | Annuler                                     |
| `Ctrl+r`   | Rétablir (undo inversé)                     |
| `.`        | Répète la dernière commande                 |
| `ciw`      | Change le mot entier sous le curseur        |
| `cw`       | Change à partir du curseur jusqu’à fin du mot |
| `c$`       | Change jusqu’à la fin de la ligne           |
| `ci"`      | Change ce qu’il y a entre les guillemets    |
| `di(`      | Supprime ce qu’il y a **dans** les parenthèses |
| `gg=G`     | Auto-indent tout le fichier                 |

---

# 👁️ **Mode visuel**
| Raccourci   | Description                                 |
|------------|---------------------------------------------|
| `v`        | Sélection caractère par caractère            |
| `V`        | Sélection ligne entière                      |
| `Ctrl+v`   | Sélection en bloc (mode colonne)             |

---

# 🔍 **Recherche**
| Raccourci        | Description                                 |
|------------------|---------------------------------------------|
| `/mot`           | Recherche vers le **bas**                   |
| `?mot`           | Recherche vers le **haut**                  |
| `n`              | Prochaine occurence                         |
| `N`              | Occurence précédente                        |
| `:noh`           | Enlève la surbrillance                     |

---

# 🧩 **Splits & fenêtres**
| Raccourci     | Description                        |
|---------------|------------------------------------|
| `:split`      | Split horizontal                   |
| `:vsplit`     | Split vertical                     |

---

# 💬 **Commentaires (avec plugin comme `comment.nvim`)**
| Raccourci     | Description                             |
|---------------|-----------------------------------------|
| `gcc`         | Commente / décommente la ligne courante |
| `gc` + visu   | Commente / décommente la sélection      |

---

# 🌳 **TreeSitter / Textobjects (avancé mais puissant)**
> Utilisable avec `nvim-treesitter-textobjects`

## 🌟 Sélection intelligente

| Raccourci | Description                           |
|-----------|----------------------------------------|
| `af`      | Fonction entière (around function)     |
| `if`      | Contenu d'une fonction (inner)         |
| `ac`      | Classe entière                         |
| `ic`      | Contenu d’une classe                   |
| `as`      | Bloc de portée local (scope)           |

## 🔁 Navigation syntaxique (si activé)

| Raccourci       | Description                            |
|------------------|----------------------------------------|
| `<leader>ss`     | Sélectionner un nœud syntaxique        |
| `<leader>si`     | Incrémenter le nœud                    |
| `<leader>sd`     | Décrémenter le nœud                    |
| `<leader>sc`     | Étendre au scope parent                |

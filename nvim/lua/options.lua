vim.opt.number = true -- afficher les numeros de lignes
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true -- split fenetre plus logique

vim.opt.wrap = true -- retour à la ligne quand ca prend tout l'ecran

-- gestion des tabulations
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.scrolloff = 999 -- curseur toujours au milieu de l'ecran

-- on s'est pas ca fait quoi
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"

vim.opt.ignorecase = true -- ctrl + F -> ignoré la casse

vim.opt.termguicolors = true -- pour que le theme marche bien 

-- touche principal (espace)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

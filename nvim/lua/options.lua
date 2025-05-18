vim.opt.number = true -- afficher les numeros de lignes
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true -- split fenetre plus logique

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪ "
vim.opt.breakat = " \t!@*-+;:,./?"

-- gestion des tabulations
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- -- Centrage permanent par défaut
-- vim.opt.scrolloff = 999
--
-- -- Désactive le centrage en mode insert (plus intuitif pour la saisie)
-- vim.api.nvim_create_autocmd("InsertEnter", {
-- 	callback = function()
-- 		vim.opt.scrolloff = 0
-- 	end,
-- })
--
-- -- Réactive le centrage en quittant le mode insert
-- vim.api.nvim_create_autocmd("InsertLeave", {
-- 	callback = function()
-- 		vim.opt.scrolloff = 999
-- 	end,
-- })
--
-- on s'est pas ca fait quoi
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"

vim.opt.ignorecase = true -- ctrl + F -> ignoré la casse

vim.opt.termguicolors = true -- pour que le theme marche bien

-- touche principal (espace)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

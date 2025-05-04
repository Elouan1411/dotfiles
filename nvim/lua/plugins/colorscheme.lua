-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("kanagawa-dragon")
-- 		-- vim.cmd[[highlight Normal guibg=#181818 ctermbg=234]]
-- 		-- vim.cmd[[highlight LineNr guibg=#202020 ctermbg=234]]
-- 	end,
-- }

-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("tokyonight").setup({
-- 			style = "night", -- "storm", "moon", "night", "day"
-- 			on_colors = function(colors)
-- 				colors.bg_dark = "#181818" -- remplace par la couleur que tu veux
-- 				colors.bg = "#181818" -- fond principal (Normal)
-- 			end,
-- 		})
-- 		vim.cmd.colorscheme("tokyonight-night")
-- 	end,
-- }

return {
	"olimorris/onedarkpro.nvim",
	config = function()
		require("onedarkpro").setup({
			colors = {
				-- On modifie uniquement la couleur de fond (bg) pour le thème dark
				dark = {
					bg = "#181818", -- couleur de fond personnalisée (ex. plus sombre que le onedark par défaut)
				},
			},
			options = {
				cursorline = true, -- facultatif : ajoute un fond pour la ligne du curseur
				transparency = false, -- assure que la couleur de fond soit appliquée
			},
			styles = {
				comments = "italic", -- tu peux personnaliser les styles ici
				keywords = "bold,italic",
				functions = "italic",
			},
		})

		-- Applique le thème
		vim.cmd("colorscheme onedark")
	end,
}

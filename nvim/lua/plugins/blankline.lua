return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		-- Activer le plugin
		require("indent_blankline").setup({
			char = "│", -- caractère utilisé pour les indentations
			show_trailing_blankline_indent = false, -- ne pas afficher les lignes vides
			show_current_context = true, -- met en évidence le bloc courant
			show_current_context_start = true,
			use_treesitter = true, -- utilise Treesitter pour mieux détecter les blocs
			buftype_exclude = { "terminal", "nofile" },
			filetype_exclude = { "help", "packer" },
		})

		-- Optionnel : changer la couleur du trait pour le contexte courant
		vim.cmd([[
            highlight IndentBlanklineChar guifg=#3c3c3c gui=nocombine
            highlight IndentBlanklineContextChar guifg=#FF5F87 gui=nocombine
        ]])
	end,
}

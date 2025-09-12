return {
	{
		"Olical/conjure",
		ft = { "scheme" }, -- charge Conjure uniquement pour Scheme
		config = function()
			-- MIT Scheme
			vim.g["conjure#client#scheme#stdio#command"] = "mit-scheme"
			vim.g["conjure#client#scheme#stdio#prompt_pattern"] = "^[0-9]+ ]=> "
		end,
	},
}

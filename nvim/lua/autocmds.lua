local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("elouan", {})

autocmd("TextYankPost", {
	group = "elouan",
	pattern = "*",
	desc = "Highlight text on yank",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })
	end,
})

autocmd("BufWritePre", {
	group = "elouan",
	pattern = "*",
	desc = "Remove trailing whitespace on save",
	command = [[%s/\s+$//e]],
})

autocmd("CursorHold", {
	group = "elouan",
	pattern = "*",
	callback = function()
		vim.schedule(vim.diagnostic.open_float)
	end,
})

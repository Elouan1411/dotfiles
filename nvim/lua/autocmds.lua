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

-- autocmd("CursorHold", {
-- 	group = "elouan",
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.schedule(vim.diagnostic.open_float)
-- 	end,
-- })

vim.o.updatetime = 300

vim.api.nvim_create_autocmd("CursorHold", {
	group = vim.api.nvim_create_augroup("elouan", { clear = true }),
	pattern = "*",
	callback = function()
		vim.diagnostic.open_float(nil, {
			focusable = false,
			close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
			border = "rounded",
			source = "always",
			prefix = "",
			scope = "cursor",
		})
	end,
})

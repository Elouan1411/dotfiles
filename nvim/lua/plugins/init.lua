-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	require("plugins.colorscheme"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.oil"),
	require("plugins.colorizer"),
	require("plugins.comment"),
	require("plugins.autopairs"),
	require("plugins.lsp"),
	require("plugins.cmp"),
	require("plugins.win_bar"),
	require("plugins.status_line"),
	require("plugins.git"),
	require("plugins.format"),
	require("plugins.copilot"),
	require("plugins.conjure"),
	-- require("plugins.trouble")
}

require("lazy").setup(plugins)

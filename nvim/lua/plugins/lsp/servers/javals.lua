local M = {}

M.setup = function(capabilities)
	return function()
		require("lspconfig").jdtls.setup({
			capabilities = capabilities,
			settings = {
				java = {
					-- Configuration spécifique à Java
					format = {
						enabled = true, -- Activer le formatage automatique
					},
					-- Autres options de configuration Java
					completion = {
						favoriteStaticMembers = {
							"org.junit.Assert.*",
							"org.mockito.Mockito.*",
						},
					},
				},
			},
			-- Configure les diagnostics pour souligner les erreurs et avertissements
			on_attach = function(client, bufnr)
				-- Activer la gestion des diagnostics
				vim.diagnostic.config({
					virtual_text = { prefix = "●", spacing = 4 },
					signs = true,
					underline = true,
				})
			end,
		})
	end
end

return M

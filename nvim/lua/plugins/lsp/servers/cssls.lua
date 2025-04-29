local M = {}

M.setup = function(capabilities)
    return function()
        require("lspconfig").cssls.setup({
            capabilities = capabilities,
            settings = {
                css = {
                    lint = { unknownAtRules = "ignore" },
                },
            },
        })
    end
end

return M

return {
    "stevearc/oil.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("oil").setup({
            delete_to_trash = true,
            watch_for_changes = true,
        })


        vim.keymap.set("n", "<leader>pv", "<cmd>Oil<cr>")
    end,



}

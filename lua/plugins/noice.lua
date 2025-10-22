return {
    "folke/noice.nvim",
    enabled = not vim.g.vscode, -- Disable in VSCode
    opts = {
        cmdline = {
            view = "cmdline",
        },
    },
}

return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                bashls = {
                    filetypes = { "sh", "bash", "zsh" }, -- Add zsh to filetypes
                    settings = {
                        bashIde = {
                            shellcheckArguments = { "--shell=bash" },
                        },
                    },
                },
            },
        },
    },
    require("lspconfig").basedpyright.setup({
        settings = {
            basedpyright = {
                -- Using Ruff's import organizer
                disableOrganizeImports = true,
            },
            python = {
                analysis = {
                    -- Ignore all files for analysis to exclusively use Ruff for linting
                    ignore = { "*" },
                },
            },
        },
    }),
}

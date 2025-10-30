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
}

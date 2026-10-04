return {
    {
        "neovim/nvim-lspconfig",
        init = function()
            vim.diagnostic.config({
                virtual_text = { source = "if_many" }, -- or "always"
                float = { source = "always" },
            })
        end,
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
                yamlls = {
                    settings = {
                        yaml = {
                            format = {
                                enable = false,
                            },
                        },
                    },
                },
                pyright = {
                    enabled = true,
                    settings = {
                        pyright = {
                            analysis = {
                                typeCheckingMode = "off",
                                diagnosticMode = "workspace", -- or "off"/"openFilesOnly"
                                autoSearchPaths = true,
                            },
                        },
                    },
                },
                ty = {
                    settings = {
                        ty = {
                            diagnosticMode = "workspace",
                            showSyntaxErrors = false,
                            inlayHints = {
                                variableTypes = true,
                                callArgumentNames = true,
                            },
                        },
                    },
                    on_attach = function(client)
                        client.server_capabilities.completionProvider = nil
                        client.server_capabilities.hoverProvider = nil
                        client.server_capabilities.definitionProvider = nil
                        client.server_capabilities.referencesProvider = nil
                        client.server_capabilities.renameProvider = nil
                        client.server_capabilities.signatureHelpProvider = nil
                        client.server_capabilities.documentSymbolProvider = nil
                        client.server_capabilities.workspaceSymbolProvider = nil
                    end,
                },
            },
        },
    },
}

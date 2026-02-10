return {
    "mason-org/mason.nvim",
    opts_extend = { "ensure_installed" },
    opts = {
        ensure_installed = {
            "basedpyright",
            "beautysh",
            "jsonlint",
            "lua-language-server",
            "luacheck",
            "markdownlint",
            "ruff",
            "shellcheck",
            "shfmt",
            "prettier",
            "yamllint",
        },
    },
}

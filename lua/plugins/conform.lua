-- Format zsh with beautysh instead of falling back to LSP formatting.
--
-- LazyVim maps only `sh = { "shfmt" }`, so for `ft=zsh` conform contributes zero
-- sources. That leaves LazyFormat's "primary" slot open (lazyvim/util/format.lua),
-- so the LSP formatter wins and bashls formats the buffer by shelling out to
-- shfmt -- which has no zsh parser and collapses `(( x ))` to `((x))`.
--
-- Declaring a zsh formatter here claims the primary slot, and beautysh with these
-- args matches the KHAAN pre-commit hook exactly, so save output is hook-clean.
return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            zsh = { "beautysh" },
        },
        formatters = {
            beautysh = {
                prepend_args = { "--indent-size=4", "--force-function-style=fnpar" },
            },
        },
    },
}

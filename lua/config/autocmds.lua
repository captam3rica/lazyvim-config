-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--
-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "conaryrecipe",
--     callback = function()
--         vim.opt_local.commentstring = "<!-- %s -->"
--     end,
-- })

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.recipe", -- Adjust to your extension
    callback = function()
        vim.bo.filetype = "xml"
    end,
})

-- Markdown
vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.opt_local.textwidth = 120
        vim.opt_local.colorcolumn = "120"
    end,
})

-- YAML
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "yml", "yaml", "yaml.ansible", "yaml.ghaction" },
    callback = function()
        vim.opt_local.expandtab = true
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

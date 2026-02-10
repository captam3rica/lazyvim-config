-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_python_ruff = "ruff"
vim.g.lazyvim_python_lsp = "ty"
vim.g.lazyvim_cmp = "blink.cmp"

-- my options
vim.opt.expandtab = true -- converts tabs to space
vim.opt.smartindent = true -- Insert indents automatically
vim.opt.textwidth = 119 -- line widto
vim.opt.colorcolumn = "120" -- hightlight the line length
vim.opt.shiftwidth = 4 -- set the shift width
vim.opt.tabstop = 4 -- number of spaces tabs count for
vim.opt.wrap = true -- enable line wrap

-- vim.treesitter.language.register("bash", "zsh")
vim.treesitter.language.register("zsh", "zsh")

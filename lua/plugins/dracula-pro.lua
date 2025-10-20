return {
    {
        "captam3rica/dracula-pro-nvim",
        lazy = false,
        priority = 1000,
    },
    -- Configure LazyVim to load dracula
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "dracula_pro",
        },
    },
}

return {
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<C-h>", "<cmd><C-U>TmuxNavigateLeft<CR>", desc = "Tmux: Navigate Left", mode = "n", silent = true },
            { "<C-j>", "<cmd><C-U>TmuxNavigateDown<CR>", desc = "Tmux: Navigate Down", mode = "n", silent = true },
            { "<C-k>", "<cmd><C-U>TmuxNavigateUp<CR>", desc = "Tmux: Navigate Up", mode = "n", silent = true },
            { "<C-l>", "<cmd><C-U>TmuxNavigateRight<CR>", desc = "Tmux: Navigate Right", mode = "n", silent = true },
            {
                "<C-\\>",
                "<cmd><C-U>TmuxNavigatePrevious<CR>",
                desc = "Tmux: Navigate Previous",
                mode = "n",
                silent = true,
            },
        },
    },
}

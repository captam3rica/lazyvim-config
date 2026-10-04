return {
    {
        "ThePrimeagen/git-worktree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- Optional (only if you want Telescope pickers)
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            local wt = require("git-worktree")

            wt.setup({
                -- defaults are usually fine
                -- change_directory_command = "tcd", -- optional
                -- update_on_change = true,
                -- update_on_change_command = "e .",
                -- clearjumps_on_change = true,
                -- autopush = false,
            })

            -- Optional: hook into worktree change events
            wt.on_tree_change(function(op, metadata)
                if op == wt.Operations.Switch then
                    print("Switched to: " .. metadata.path)
                end
            end)

            -- Optional: Telescope integration
            pcall(function()
                require("telescope").load_extension("git_worktree")
            end)
        end,
        keys = {
            -- If you use Telescope:
            {
                "<leader>gw",
                function()
                    require("telescope").extensions.git_worktree.git_worktrees()
                end,
                desc = "Git Worktrees",
            },
            {
                "<leader>gW",
                function()
                    require("telescope").extensions.git_worktree.create_git_worktree()
                end,
                desc = "Create Git Worktree",
            },
        },
    },
}

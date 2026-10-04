return {
    {
        "giusgad/pets.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "giusgad/hologram.nvim", -- or "edluffy/hologram.nvim"
        },
        cmd = {
            "PetsNew",
            "PetsNewCustom",
            "PetsList",
            "PetsKill",
            "PetsKillAll",
            "PetsRemove",
            "PetsRemoveAll",
        },
        opts = {
            row = 8,
            col = 120,
            speed_multiplier = 1,
            default_pet = "dog",
            default_style = "brown",
            random = false,
            death_animation = true,
            popup = {
                width = "30%",
                winblend = 100,
                hl = { Normal = "Normal" },
                avoid_statusline = false,
            },
        },
        config = function(_, opts)
            require("pets").setup(opts)
        end,
    },
}

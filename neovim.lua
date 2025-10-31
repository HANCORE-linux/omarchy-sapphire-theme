return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#060d1f", -- Default background
                base01 = "#68728d", -- Lighter background (status bars)
                base02 = "#060d1f", -- Selection background
                base03 = "#68728d", -- Comments, invisibles
                base04 = "#ff00ff", -- Dark foreground
                base05 = "#f5ecf6", -- Default foreground
                base06 = "#d7ebe9", -- Light foreground
                base07 = "#ff00ff", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#e95c4b", -- Variables, errors, red
                base09 = "#efd588", -- Integers, constants, orange
                base0A = "#6488ea", -- Classes, types, yellow
                base0B = "#1e90ff", -- Strings, green
                base0C = "#8cc7bf", -- Support, regex, cyan
                base0D = "#374cb3", -- Functions, keywords, blue
                base0E = "#d1d5f9", -- Keywords, storage, magenta
                base0F = "#ff681f", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

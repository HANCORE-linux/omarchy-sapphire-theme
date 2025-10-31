return {
	{
		"bjarneo/aether.nvim",
		name = "aether-sapphire-ghostty-bg",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				base00 = "#060D1F", -- Background (Ghostty Sapphire)
				base01 = "#1A2742", -- Panels / UI
				base02 = "#1E2035", -- Selection / hover
				base03 = "#5A6B8D", -- Comments / muted sapphire gray
				base04 = "#B8D8E0", -- Midtone highlight
				base05 = "#E0F7FA", -- Foreground / main text
				base06 = "#F5FAFC", -- Emphasis / bright text
				base07 = "#FFFFFF", -- Pure white

				base08 = "#E95C4B", -- Errors / pink sapphire
				base09 = "#EFD588", -- Constants / golden sapphire
				base0A = "#5FA3E7", -- Classes / soft blue sapphire
				base0B = "#4FD1C5", -- Strings / teal sapphire
				base0C = "#8CC7BF", -- Support / pale teal
				base0D = "#6488EA", -- Functions / main Ghostty sapphire
				base0E = "#8A97FF", -- Keywords / violet sapphire
				base0F = "#F49BA6", -- Deprecated / padparadscha
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = { colorscheme = "aether" },
	},
}

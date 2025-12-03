return {
	{
		"bjarneo/aether.nvim",
		name = "aether-sapphire-ghostty-bg",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				base00 = "#0A1429", -- Background (Ghostty Sapphire)
				base01 = "#8DAFE2", -- Panels / UI
				base02 = "#0A1429", -- Selection / hover
				base03 = "#6E7FA3", -- Comments / muted sapphire gray
				base04 = "#B8D8E0", -- Midtone highlight
				base05 = "#E0F7FA", -- Foreground / main text
				base06 = "#F5FAFC", -- Emphasis / bright text
				base07 = "#e5e5e5", -- Pure white

				base08 = "#E95C4B", -- Errors / pink sapphire
				base09 = "#EFD588", -- Constants / golden sapphire
				base0A = "#5FA3E7", -- Classes / soft blue sapphire
				base0B = "#f3ced0", -- Strings / teal sapphire
				base0C = "#fef5db", -- Support / pale teal
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

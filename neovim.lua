return {
"2giosangmitom/nightfall.nvim",
  lazy = false,
  priority = 1000,
  opts = {}, -- Add custom configuration here
  config = function(_, opts)
    require("nightfall").setup(opts)
    vim.cmd("colorscheme deeper-night") -- Choose from: nightfall, deeper-night, maron, nord
  end,
}
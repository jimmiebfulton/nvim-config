return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup{
        style = "warmer",
        toggle_style_key = "<leader>tc",
      }
      require("onedark").load()
    end
  },

  {
    "shaunsingh/nord.nvim",
    priority=1000,
  },

  {
    "folke/tokyonight.nvim",
    priority=1000,
  },

  {
    "EdenEast/nightfox.nvim",
    priority=1000,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  }
}

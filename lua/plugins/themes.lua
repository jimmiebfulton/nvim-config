return {
  {
    "navarasu/onedark.nvim",
    priority=1000,
    config = function()
      require("onedark").setup{
        style = "warmer",
      }
    end
  },

  {
    "shaunsingh/nord.nvim",
  },

  {
    "folke/tokyonight.nvim",
  },

  {
    "EdenEast/nightfox.nvim",
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
}

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
  
  "shaunsingh/nord.nvim",
}

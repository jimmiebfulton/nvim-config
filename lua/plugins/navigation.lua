return {
  {
    "ggandor/lightspeed.nvim", -- https://github.com/ggandor/lightspeed.nvim
    enabled = true,
    dependencies = {
      "tpope/vim-repeat",
    },
    config =function ()
      local ls = require("lightspeed")
      local keys = require("utils.keys")

      ls.setup{
      }

      keys.map({"v"}, "S", "<Plug>Lightspeed_S")
    end
  },

  {
    "ggandor/leap.nvim",
    enabled = false,
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function ()
      local leap = require("leap")
      leap.add_default_mappings()
    end
  },
}

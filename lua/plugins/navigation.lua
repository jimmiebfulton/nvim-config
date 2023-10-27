return {
  {
    "ggandor/lightspeed.nvim",
    enabled = false,
    dependencies = {
      "tpope/vim-repeat",
    },
    config =function ()
    end
  },

  {
      "ggandor/leap.nvim",
      enabled = true,
      dependencies = {
        "tpope/vim-repeat",
      },
      config = function ()
        local leap = require("leap")
        leap.add_default_mappings()
      end
  },

  {
   "justinmk/vim-sneak",
    dependencies = {
      "repeat.nvim",
    },
    enabled = false,
    config = function ()
      local keys = require("utils.keys")
      keys.map({"n"}, "f", "<Plug>Sneak_f")
      keys.map({"n"}, "F", "<Plug>Sneak_F")
      keys.map({"n"}, "t", "<Plug>Sneak_t")
      keys.map({"n"}, "T", "<Plug>Sneak_T")
      vim.cmd "let g:sneak#s_next = 1"
    end,
  }
}

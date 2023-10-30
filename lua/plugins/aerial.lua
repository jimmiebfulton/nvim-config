return {
  {
    'stevearc/aerial.nvim',
    opts = {
      close_on_select = true,
      show_guides = true,
      autojump = true,
      layout = {
        default_direction = "prefer_right",
      },
      float = {
        border = "rounded",
      },
      nav = {
        preview = true,
        keymaps = {
          ["<CR>"] = "actions.jump",
          ["<2-LeftMouse>"] = "actions.jump",
          ["<C-v>"] = "actions.jump_vsplit",
          ["<C-s>"] = "actions.jump_split",
          ["h"] = "actions.left",
          ["l"] = "actions.right",
          ["<Right>"] = "actions.right",
          ["<Left>"] = "actions.right",
          ["<C-c>"] = "actions.close",
          ["<Esc>"] = "actions.close",
          ["q"] = "actions.close",
        },
      },
    },
    -- Optional dependencies
    dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons"
    },
  }

}

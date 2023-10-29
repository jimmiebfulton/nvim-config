
return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
    },
    config = function()
      require("toggleterm").setup()

      local keys = require("utils.keys")
      keys.map({"n"}, "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", "Terminal")
      vim.cmd[[
        tnoremap <Esc> <C-w><C-n>
      ]]
    end,
  }
}

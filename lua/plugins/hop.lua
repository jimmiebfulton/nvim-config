return {
  {
    'phaazon/hop.nvim',
--    branch = 'v1', -- optional but strongly recommended
    config = function()
      require("hop").setup{
        create_hl_autocmd = true,
      }
      local map = require("utils.keys").map
			map( { "n", "v" }, "<leader>jw", "<cmd>HopWord<cr>", "Word")
			map( { "n", "v" }, "<leader>ji", "<cmd>HopChar1CurrentLine<cr>", "Char In Line")
			map( { "n", "v" }, "<leader>jl", "<cmd>HopLine<cr>", "Line")
			map( { "n", "v" }, "<leader>jC", "<cmd>HopChar1<cr>", "Char 1")
			map( { "n", "v" }, "<leader>jc", "<cmd>HopChar2<cr>", "Char 2")
			map( { "n", "v" }, "<leader>jj", "<cmd>HopChar2<cr>", "Char 2")
    end
  }
}

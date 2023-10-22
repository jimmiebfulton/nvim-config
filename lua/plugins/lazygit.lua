return {
  {
      "kdheepak/lazygit.nvim",
      dependencies = {
			  "nvim-lua/plenary.nvim",
      },
      config = function() 
        local keys = require("utils.keys")
        keys.map({ 'n' }, "<leader>gg", "<cmd>LazyGit<cr>", "LazyGit" )
      end,
  }
}

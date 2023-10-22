-- Nicer filetree than NetRW
return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup{
        close_if_last_window = true,
      }
			local map = require("utils.keys").map
			map( { "n", "v" }, "<leader>fe", "<cmd>Neotree close<cr><cmd>Neotree focus float toggle reveal<cr>", "Explore in Float")
			map( { "n", "v" }, "<leader>fE", "<cmd>Neotree focus left toggle reveal<cr>", "Explore in Bar")
			map( { "n", "v" }, "<leader>fr", "<cmd>Neotree focus left reveal<cr>", "Reveal in Bar")
			map( { "n", "v" }, "<leader>be", "<cmd>Neotree buffers float focus reveal<cr>", "Reveal in Float")
			

      map( { "n", "v" }, "<leader>ge", "<cmd>Neotree git_status close<cr><cmd>Neotree git_status float focus<cr>", "Git Status Float")
      map( { "n", "v" }, "<leader>gE", "<cmd>Neotree git_status left toggle<cr>", "Git Status Bar")
		end,
	},
}

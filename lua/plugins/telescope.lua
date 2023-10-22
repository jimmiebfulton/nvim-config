-- Telescope fuzzy finding (all the things)
return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
		},
		config = function()
      local actions = require "telescope.actions"

			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							--["<C-u>"] = false,
							--["<C-d>"] = false,
						},
            n = {
              ["q"] = actions.close,
            },
					},
				},
        pickers = {
          current_buffer_fuzzy_find = {
            layout_config = {
              prompt_position = "bottom",
            }
          },
        }
			})

			-- Enable telescope fzf native, if installed
			pcall(require("telescope").load_extension, "fzf")

			local map = require("utils.keys").map
--			map("n", "<leader>fr", require("telescope.builtin").oldfiles, "Recently opened")
			map("n", "<leader><space>", require("telescope.builtin").buffers, "Open buffers")
			map("n", "<leader>bb", require("telescope.builtin").buffers, "Find")
			map("n", "<leader>/", require("telescope.builtin").current_buffer_fuzzy_find, "Search File")
			map("n", "<leader>ff", require("telescope.builtin").find_files, "Find")
			map("n", "<leader>sh", require("telescope.builtin").help_tags, "Help")
			map("n", "<leader>sw", require("telescope.builtin").grep_string, "Current word")
			map("n", "<leader>fg", require("telescope.builtin").live_grep, "Grep")
			map("n", "<leader>sd", require("telescope.builtin").diagnostics, "Diagnostics")
      map("n", "<leader>sc", require("telescope.builtin").colorscheme, "Colorschemes")

			map("n", "<C-p>", require("telescope.builtin").keymaps, "Search keymaps")
		end,
	},
}

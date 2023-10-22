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
      require("telescope").load_extension("lazygit")

			local map = require("utils.keys").map
--			map("n", "<leader>fr", require("telescope.builtin").oldfiles, "Recently opened")
			map("n", "<leader>bb", require("telescope.builtin").buffers, "Find")
			map("n", "<leader>/", require("telescope.builtin").current_buffer_fuzzy_find, "Search File")
			
      map("n", "<leader><leader>f", require("telescope.builtin").find_files, "File")
      map("n", "<leader>ff", require("telescope.builtin").find_files, "File")
			map("n", "<leader>fg", require("telescope.builtin").live_grep, "Grep")
			map("n", "<leader>fw", require("telescope.builtin").grep_string, "Current word")
			
      map("n", "<leader>gsa", require("telescope.builtin").git_commits, "Commits All")
      map("n", "<leader>gsb", require("telescope.builtin").git_bcommits, "Commits Buffer")
      map("n", "<leader>gss", require("telescope.builtin").git_status, "Status")


			map("n", "<leader>sh", require("telescope.builtin").help_tags, "Help")
			map("n", "<leader>sd", require("telescope.builtin").diagnostics, "Diagnostics")
      map("n", "<leader>sc", require("telescope.builtin").colorscheme, "Colorschemes")

			map("n", "<C-p>", require("telescope.builtin").keymaps, "Search keymaps")
		end,
	},
}




-- Telescope fuzzy finding (all the things)
return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
      "stevearc/aerial.nvim",
      "ahmedkhalf/project.nvim",
			"nvim-tree/nvim-web-devicons",
      "debugloop/telescope-undo.nvim",
		},
    keys = {
      { "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Find Buffers" }},
      { "<leader>/", "cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search File" }},

      { "<leader><leader>f", "<cmd>Telescope find_files<cr>", { desc = "File" }},
      { "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "File" }},
      { "<leader>fR", "<cmd>Telescope oldfiles<cr>", { desc = "Recent" }},
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep" }},
      { "<leader>fw", "<cmd>Telescope grep_string<cr>", { desc = "Current word" }},

      { "<leader>gsa", "<cmd>Telescope git_commits<cr>", { desc = "Commits All" }},
      { "<leader>gsb", "<cmd>Telescope git_bcommits<cr>", { desc = "Commits Buffer" }},
      { "<leader>gss", "<cmd>Telescope git_status<cr>", { desc = "Status" }},


      { "<leader>sh", "<cmd>Telescope help_tags<cr>", { desc = "Help" }},
      { "<leader>sd", "<cmd>Telescope diagnostics<cr>", { desc = "Diagnostics" }},
      { "<leader>sc", "<cmd>Telescope colorscheme<cr>", { desc = "Colorschemes" }},
      { "<leader>so", "<cmd>Telescope vim_options<cr>", { desc = "VIM Options" }},
      { "<leader>sr", "<cmd>Telescope resume<cr>", { desc = "Resume" }},

      { "<leader>su", "<cmd>Telescope undo<cr>", { desc = "Undo" }},

      { "<C-p>", "<cmd>Telescope keymaps<cr>", { desc = "Search keymaps" }},
    },
    config = function()
      local opts = {
        defaults = {
          mappings = {
            i = {
              ["<C-Up>"] = function() require("telescope.actions").preview_scrolling_up() end,
              ["<C-Down>"] = function() require("telescope.actions").preview_scrolling_down() end,
              ["<C-h>"] = "which_key",
            },
            n = {
              ["<C-Up>"] = function() require("telescope.actions").preview_scrolling_up() end,
              ["<C-Down>"] = function() require("telescope.actionsg").preview_scrolling_down() end,
              ["q"] = function() require("telescope.actions").close() end,
              ["<C-h>"] = "which_key",
            },
          },
        },
        pickers = {
          current_buffer_fuzzy_find = {
            layout_config = {
              prompt_position = "bottom",
            }
          },
        },
        extensions = {
          undo = {
            use_delta=true,
            layout_strategy="vertical",
            layout_config = {
              preview_height = 0.6,
            },
            mappings = {
              i = {
                -- IMPORTANT: Note that telescope-undo must be available when telescope is configured if
                -- you want to replicate these defaults and use the following actions. This means
                -- installing as a dependency of telescope in it's `requirements` and loading this
                -- extension from there instead of having the separate plugin definition as outlined
                -- above.
                ["<cr>"] = require("telescope-undo.actions").restore,
                ["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
                ["<C-r>"] = require("telescope-undo.actions").yank_additions,
              },
            },
          },
        }
      }
      require("telescope").setup(opts)
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("aerial")
      require("telescope").load_extension("projects")
      require("telescope").load_extension("lazygit")
      require("telescope").load_extension("undo")
    end,
	},
}

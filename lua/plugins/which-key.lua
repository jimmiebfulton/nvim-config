return {
{
		"folke/which-key.nvim",
		config = function()
			local wk = require("which-key")

      local mappings = {
					["<leader>"] = {
            ["<leader>"] = {
              name = "Quick",
              w = { "<cmd>w<cr>", "Write" },
              W = { "<cmd>w<cr><cmd>bd<cr>", "Write and Close" },
              d = { "<cmd>bd<cr>", "Close" },
              D = { "<cmd>bd!<cr>", "Force Close" },
            },
					  b = {
              name = "Buffer",
              d = { "<cmd>bd<cr>", "Delete" },
              D = { "<cmd>bd!<cr>", "Force Delete" },
              w = { "<cmd>w<cr>", "Write" },
              n = { "<cmd>enew<cr>", "New" },
              r = { "<cmd>edit!<cr>", "Revert" },
            },
            c = {
              name = "Code",
              l = {
                name = "LSP",
              },
            },
            d = { "<cmd>bd<cr>", "Delete Buffer" },
            D = { "<cmd>bd!<cr>", "Force Delete Buffer" },
            f = { name = "Find" },
						g = {
              name = "Git",
              s = {
                name = "Search",
              },
            },
            h = {
              name = "Help",
              p = { "<cmd>h rtp<cr>", "Path Report" },
            },

						j = { name = "Jump" },
            r = { name = "Refactor" },
						s = { name = "Search/Show" },
						l = { name = "LSP" },
						u = { name = "UI" },
            t = {
              name = "Toggle",
              h = { "<cmd>nohlsearch<cr>", "Highlights" },
              r = { "<cmd>set relativenumber!<cr>", "Relative" },
            },
            T = {
              name = "Tools",
              h = { "<cmd>! zellij run -f -- htop<cr>", "htop" },
              l = { "<cmd>Lazy<cr>", "Lazy" },
              m = {
                name = "markdown",
                p= { "<cmd>MarkdownPreviewToggle<cr>", "Preview Toggle" },
              },
            },
            w = {
              name = "Window",
              ["<C-Up>"] = { "<cmd>to split<cr>", "Split to Top" },
              ["<C-Down>"] = { "<cmd>bo split<cr>", "Split to Bottom" },
              ["<C-Left>"] = { "<cmd>to vsplit<cr>", "Split Left" },
              ["<C-Right>"] = { "<cmd>bo vsplit<cr>", "Split Right" },
              ["<Up>"] = { "<cmd>leftabove split<cr>", "Split Up" },
              ["<Down>"] = { "<cmd>split<cr>", "Split Down" },
              ["<Left>"] = { "<cmd>leftabove vsplit<cr>", "Split to Left" },
              ["<Right>"] = { "<cmd>vsplit<cr>", "Split to Right" },
              d = { "<cmd>close<cr>", "Delete Window" },
              f = { "<cmd>MaximizerToggle<cr>", "Maximize" },
              o = { "<cmd>only<cr>", "Only" },
            },
            q = { "<cmd>q<cr>", "Quit" },
            Q = { "<cmd>qa!<cr>", "Quit All" },
					}
		  }


      wk.setup{
        plugins = {
          marks = true, -- shows a list of your marks on ' and `
          registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
          spelling = {
            enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
            suggestions = 40, -- how many suggestions should be shown in the list?
          },
          -- the presets plugin, adds help for a bunch of default keybindings in Neovim
          -- No actual key bindings are created
          presets = {
            operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true, -- bindings for prefixed with g
          },
        },
        -- add operators that will trigger motion and text object completion
        -- to enable all native operators, set the preset / operators plugin above
        operators = { gc = "Comments" },
        key_labels = {
          -- override the label used to display some keys. It doesn't effect WK in any other way.
          -- For example:
          ["<space>"] = "SPC",
          ["<cr>"] = "RET",
          ["<tab>"] = "TAB",
          ["<leader>"] = "LDR",
        },
        icons = {
          breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
          separator = "➜", -- symbol used between a key and it's label
          group = "+", -- symbol prepended to a group
        },
        popup_mappings = {
          scroll_down = '<c-d>', -- binding to scroll down inside the popup
          scroll_up = '<c-u>', -- binding to scroll up inside the popup
        },
        window = {
          border = "none", -- none, single, double, shadow
          position = "bottom", -- bottom, top
          margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
          padding = { 1, 0, 1, 0 }, -- extra window padding [top, right, bottom, left]
          winblend = 0
        },
        layout = {
          height = { min = 4, max = 25 }, -- min and max height of the columns
          width = { min = 20, max = 50 }, -- min and max width of the columns
          spacing = 3, -- spacing between columns
          align = "left", -- align columns left, center or right
        },
        ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
        hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
        show_help = true, -- show help message on the command line when the popup is visible
        triggers = "auto", -- automatically setup triggers
        -- triggers = {"<leader>"} -- or specify a list manually
        triggers_blacklist = {
          -- list of mode / prefixes that should never be hooked by WhichKey
          -- this is mostly relevant for key maps that start with a native binding
          -- most people should not need to change this
          i = { "j", "k" },
          v = { "j", "k" },
        },
      }

			wk.register(mappings)
		end
	}
}

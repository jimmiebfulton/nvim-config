return {

  {
    "simrat39/rust-tools.nvim",
    enabled = true,
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "nvim-lua/plenary.nvim",
    },
    config = function ()
      local rt = require("rust-tools")
      local map = require("utils.keys").map
      local lmap = require("utils.keys").lsp_map

      rt.setup({
        server = {
          on_attach = function(client, bufnr)
            map({"i"}, "<C-space>", rt.hover_actions.hover_actions, "Completions")
            lmap("<leader>ca", rt.code_action_group.code_action_group, bufnr, "Actions")
            lmap("<leader>cE", "<cmd>AerialToggle<cr>", bufnr, "Explore Bar")
            lmap("<leader>ce", "<cmd>AerialNavToggle<cr>", bufnr, "Explore")
            lmap("<leader>cs", "<cmd>Telescope aerial<cr>", bufnr, "Buffer Symbols")
            lmap("<leader>cS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", bufnr, "Project Symbols")
            lmap("<leader>cd", "<cmd>Telescope diagnostics<cr>", bufnr, "Diagnostics")
            lmap("<leader>cr", "<cmd>Telescope lsp_references<cr>", bufnr, "References")
            lmap("<leader>ci", "<cmd>Telescope lsp_implementations<cr>", bufnr, "Implementations")
            lmap("<leader>rn", vim.lsp.buf.rename, bufnr, "Rename")

            lmap("<C-k>",vim.lsp.buf.hover, bufnr, "Documentation")
            lmap("<C-K>",vim.lsp.buf.signature_help, bufnr, "Signature")
            lmap("gd", vim.lsp.buf.declaration, bufnr, "Declaration")
            lmap("<leader>lr", "<cmd>LspRestart<cr>", bufnr, "Restart")

          end,
        },
      })
    end,
  }
}

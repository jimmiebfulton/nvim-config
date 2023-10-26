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
      local keys = require("utils.keys")

      rt.setup({
        server = {
          on_attach = function(client, bufnr)
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      })
    end,
  }
}

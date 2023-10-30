return {
  {
    "Maan2003/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
      vim.diagnostic.config{ virtural_text = false }
      vim.keymap.set(
        "",
        "<Leader>ll",
        require("lsp_lines").toggle,
        { desc = "Toggle lsp_lines" }
      )
    end,
  }
}

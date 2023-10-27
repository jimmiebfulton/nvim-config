return {
{
    "kylechui/nvim-surround",
    enabled = true,
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
--    event = "VeryLazy",
    config = function()

      vim.cmd[[ 
      let g:surround_no_mappings= 1
      ]]

      require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
      })
    end
}
}

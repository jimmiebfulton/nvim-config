return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "powerline",
        disabled_filetypes = { 'neo-tree' }
			},
		})
	end,
}

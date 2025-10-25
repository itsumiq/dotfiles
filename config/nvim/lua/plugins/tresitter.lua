return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"go", "lua", "vim", "rust", "dockerfile", "proto",
				"typescript", "tsx", "javascript", "json", "css", "html"
			},
			highlight = {
				enable = true,
			},
		})
	end,
}

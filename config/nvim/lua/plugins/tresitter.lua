return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "go", "lua", "vim", "rust" },
			highlight = {
				enable = true,
			},
		})
	end,
}

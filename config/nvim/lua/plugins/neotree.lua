return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			-- Плавающее окно
			popup_border_style = "rounded",
			default_component_configs = {
				git_status = {
					symbols = {
						added = "✚",
						modified = "",
						deleted = "✖",
						renamed = "➜",
						untracked = "",
						ignored = "",
						unstaged = "✗",
						staged = "✓",
					}
				},
				diagnostics = {
					symbols = {
						hint = "",
						info = "",
						warn = "",
						error = "",
					}
				},
			},
			window = {
				position = "float", -- плавающее окно
				max_width = 60,
				max_height = 25,
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree float<CR>")
	end,
}

return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
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
						error = "e",
					}
				},
			},
			renderers = {
				directory = {
					{ "indent" },
					{ "icon" },
					{ "current_filter" },
					{ "name" },
					{ "diagnostics" },
					{ "git_status",    highlight = "NeoTreeDimText" },
				},
				file = {
					{ "indent" },
					{ "icon" },
					{ "name",       use_git_status_colors = true },
					{ "diagnostics" },
					{ "git_status", highlight = "NeoTreeDimText" },
				},
			},
			window = {
				position = "float",
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

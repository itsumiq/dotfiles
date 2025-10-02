return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		require('telescope').setup({
			defaults = {
				prompt_prefix = "🔍 ",
				selection_caret = "➤ ",

				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
						results_width = 0.8,
					},
					width = 0.87,
					height = 0.80,
					preview_cutoff = 120,
				},
				sorting_strategy = "ascending",

				mappings = {
					i = {
						["<C-j>"] = "move_selection_next",
						["<C-k>"] = "move_selection_previous",
						["<C-d>"] = "delete_buffer",
						["<esc>"] = "close",
					},
					n = {
						["dd"] = "delete_buffer",
					},
				},

				file_ignore_patterns = {
					"node_modules",
					".git/",
					"*.o",
					"*.a",
					"*.out",
					"*.class",
					"*.pdf",
					"*.mkv",
					"*.mp4",
					"*.zip"
				},
			},

			pickers = {
				find_files = {
					hidden = false,
				},
				live_grep = {
				},
				buffers = {
					sort_lastused = true,
					previewer = false,
				},
			},
		})

		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live Grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags' })
		vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Recent Files' })

		-- git
		vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'git commits' })
		vim.keymap.set('n', '<leader>gC', require('telescope.builtin').git_bcommits,
			{ desc = 'git commits (this file)' })
		vim.keymap.set('n', '<leader>gb', require('telescope.builtin').git_branches, { desc = 'git branches' })

		vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'references' })
		vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'definitions' })
		vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = 'implementations' })
	end,
}

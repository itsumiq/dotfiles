return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.diagnostic.config({
			float = {
				border = "none",
			},
			update_in_insert = false,
			virtual_text = true,
			severity_sort = true,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(event)
				local opts = { buffer = event.buf }

				local function map(mode, lhs, rhs)
					vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", opts, {}))
				end

				map("n", "gD", vim.lsp.buf.declaration)
				map("n", "<leader>h", vim.lsp.buf.hover)
				map("n", "<leader>ca", vim.lsp.buf.code_action)
				map("n", "<leader>lr", vim.lsp.buf.rename)
				map("i", "<c-h>", vim.lsp.buf.signature_help)
			end,
		})

		local lspconfig = require("lspconfig")
		local servers = {
			gopls = {
				settings = {
					gopls = {
						-- usePlaceholders = true,
						completeUnimported = true,
						experimentalPostfixCompletions = true,
						hints = {
							compositeLiteralFields = true,
						},
						buildFlags = {
							"-tags=integration",
						},
						staticcheck = true,
						analyses = {
							unusedparams = true,
							unusedwrite  = true,
							nilness      = true,
							printf       = true,
							-- shadow       = true,
						},
					},

				},
			},
			lua_ls = {
				settings = {
					Lua = {
						runtime = {
							version = 'LuaJIT',
						},
						diagnostics = {
							globals = { 'vim' },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
						completion = {
							callSnippet = "Replace",
						},
					},
				},
			},
			rust_analyzer = {
				settings = {
					["rust-analyzer"] = {
						cargo = { allFeatures = true },
						check = { command = "clippy" },
						procMacro = { enable = true },
						inlayHints = { enable = true },
						diagnostics = { enable = true },
					},
				},
			},
			dockerls = {},
		}

		for server, config in pairs(servers) do
			lspconfig[server].setup(config)
		end
	end,
}

vim.opt.clipboard:append("unnamedplus")
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.path:append("**")
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.pumheight = 15 
vim.o.number = true
vim.o.relativenumber = true
vim.o.expandtab = false
vim.o.tabstop = 8
vim.o.shiftwidth = 8
vim.o.smartindent = false
vim.o.autoindent = true
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.history = 1024
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.o.inccommand = "split"
vim.o.colorcolumn = "120"
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.wrap = false
vim.o.undofile = true
vim.o.undodir = "/home/itsumi/.nvim/undo"
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.cursorlineopt = "number"
vim.o.cursorline = true
vim.o.hlsearch = true
vim.o.matchtime = 2
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 0
vim.o.autoread = true
vim.o.autowrite = false
vim.o.foldmethod = "expr"
vim.o.foldlevel = 99

-- mappings
vim.keymap.set('n', '<Esc>', ':nohl<CR>', { desc = 'clear search highlight' })
vim.keymap.set('n', '<leader>x', '"_dw', { desc = 'delete word (no yank)'})

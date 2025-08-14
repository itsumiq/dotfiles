return {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp' },
    config = function()
        local cmp = require('cmp')
        cmp.setup({
            mapping = {
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<C-f>'] = cmp.mapping.complete(),
            },
            sources = {
                { name = 'nvim_lsp' },
            }
        })
    end,
}

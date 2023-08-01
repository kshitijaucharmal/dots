
require'lspconfig'.pyright.setup{}

-- nvim-cmp config
local cmp = require('cmp')

cmp.setup {
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        -- Add more sources if needed
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
    },
}

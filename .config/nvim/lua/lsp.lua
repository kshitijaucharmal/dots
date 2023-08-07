
-- Languages
require('mason').setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').clangd.setup{}

-- nvim-cmp config
local cmp = require('cmp')

cmp.setup {
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        -- Add more sources if needed
    },
    window = {
        completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
            -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
            if cmp.visible() then
                --local entry = cmp.get_selected_entry()
                --if not entry then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                --else
                    --cmp.confirm()
                --end
            else
                fallback()
            end
        end, {"i","s","c",}),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
    }),
}

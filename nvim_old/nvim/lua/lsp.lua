local function on_attach()
end

require'lspconfig'.yamlls.setup{}

require'lspconfig'.pyright.setup{
    on_attach=on_attach,
}

require'lspconfig'.gopls.setup{
    on_attach=on_attach,
    cmd = {"gopls", "serve"},
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
           },
            staticcheck = true,
        },
    },
}

require'lspconfig'.terraformls.setup{}

local opts = {
    -- whether to highlight the currently hovered symbol
    -- disable if your cpu usage is higher than you want it
    -- or you just hate the highlight
    -- default: true
    highlight_hovered_item = true,

    -- whether to show outline guides
    -- default: true
    show_guides = true,
}

require('symbols-outline').setup(opts)



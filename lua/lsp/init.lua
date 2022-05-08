local nvim_lsp=require('lspconfig')
local opts = {noremap=true,silent=true}

local on_attach = function(client,bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr,...) end
    
    buf_set_keymap('n','gD','<cmd> lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n','gd','<cmd> lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n','gi','<cmd> lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n','<space>d','<cmd> lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n','K','<cmd> lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n','<space>rn','<cmd> lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n','gr','<cmd> lua vim.lsp.buf.references()<CR>', opts)
    if client.resolved_capabilities.document_formatting then
        vim.cmd([[
            augroup Format
            autocmd! * <buffer>
            autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
            augroup END
        ]])
    end
end

local servers = {'tsserver','pyright'}

for _, lsp in pairs(servers) do
    nvim_lsp[lsp].setup{
        on_attach=on_attach
    }
end

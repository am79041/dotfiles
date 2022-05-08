vim.o.number=true
vim.o.relativenumber=true
vim.o.expandtab=true
vim.o.sw=2
vim.o.ts=2
vim.o.mouse='a'
vim.o.termguicolors=true
vim.cmd("colorscheme NeoSolarized")
vim.cmd("let g:badwolf_darkgutter = 1")

local opts = {noremap=true,silent=true}

local leader = '\\'

vim.api.nvim_set_keymap('i', '<C-s>', '<esc>:w<CR>',opts)
vim.api.nvim_set_keymap('n','<c-l>', '<c-w>l', opts)
vim.api.nvim_set_keymap('n','<c-h>', '<c-w>h', opts)
vim.api.nvim_set_keymap('n','<c-j>', '<c-w>j', opts)
vim.api.nvim_set_keymap('n','<c-k>', '<c-w>k', opts)
vim.api.nvim_set_keymap('n',';t', ':Lexplore<CR>', opts)
vim.api.nvim_set_keymap('i','<c-s>', '<esc>:w<CR>', opts)
vim.api.nvim_set_keymap('n','<space>f', ':normal gg=G<cr>', opts)
vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', opts)
vim.api.nvim_set_keymap('n','<leader>m', ':cd ~/AppData/Local/nvim/lua<CR>',opts)

--transparent

vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

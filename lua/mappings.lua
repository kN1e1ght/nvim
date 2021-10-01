
vim.api.nvim_set_keymap('n','S',':w<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','Q',':q<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('','J','5j',{noremap=true,silent=true})
vim.api.nvim_set_keymap('','K','5k',{noremap=true,silent=true})
vim.api.nvim_set_keymap('','H','5h',{noremap=true,silent=true})
vim.api.nvim_set_keymap('','L','5l',{noremap=true,silent=true})
vim.api.nvim_set_keymap('','W','5w',{noremap=true,silent=true})
vim.g['mapleader'] = ' '



vim.api.nvim_set_keymap('n','<leader>e',':NvimTreeToggle<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>r',':NvimTreeRefresh<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>f',':NvimTreeFindFile<CR>',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','s','<nop>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','sj',':set',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','sk',':set',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','sl',':set',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','sh',':set',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','<C-h>','<c-w>h',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-j>','<c-w>j',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-k>','<c-w>k',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-l>','<c-w>l',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','<left>',':vertical',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<up>',':res',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<down>',':res',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<right>',':vertical',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','tj',':tabe<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','th',':-tabnext<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','tl',':+tabnext<CR>',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','<LEADER>af',':r',{noremap=true,silent=true})



vim.api.nvim_set_keymap('n','r',':call',{noremap=true,silent=true})
--test
vim.api.nvim_set_keymap('n','f',':source '..vim.fn.stdpath('config')..'/'..'init.lua',{noremap=true,silent=true})

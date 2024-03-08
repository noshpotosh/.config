vim.g.mapleader = ' '
vim.g.mapleaderlocal = ' '

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

vim.keymap.set('n', '<leader>t', ':terminal<CR>')

vim.keymap.set('n', '<leader>v', ':vsplit<CR>')
vim.keymap.set('n', '<leader>h', ':split<CR>')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')

-- Temp keymap while I figure out how to make this automatic
vim.keymap.set('n', '<leader>se', ':ScorpeonHighlightEnable<CR>')
vim.keymap.set('n', '<leader>sd', ':ScorpeonHighlightDisable<CR>')

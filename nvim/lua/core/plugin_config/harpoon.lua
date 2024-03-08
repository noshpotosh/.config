local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set('n', '<leader>a', function() harpoon:list():append() end)
vim.keymap.set('n', '<leader>l', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end) 

vim.keymap.set('n', '<S-Tab>', function() harpoon:list():prev() end)
vim.keymap.set('n', '<Tab>', function() harpoon:list():next() end)

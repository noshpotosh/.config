local builtin = require('telescope.builtin')

-- Find things in files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Find things in git
vim.keymap.set('n', '<leader>b', builtin.git_branches, {})
vim.keymap.set('n', '<leader>c', builtin.git_status, {})
vim.keymap.set('n', '<leader>s', builtin.git_stash, {})

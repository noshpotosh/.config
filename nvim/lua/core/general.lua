require('onedark').load()

function line_num()
    if (vim.v.relnum == 0) then
        return 'test'
    else
        return '%r'
    end
end

-- VS Code Syntax highlighting
--vim.g.scorpeon_extensions_path = '/Users/nosh/.cache/scorpeon/extensions'
--vim.g.scorpeon_highlight = {
    --enable = {'javascript', 'html', 'css', 'cf', 'lua', 'sql', 'php'}
--}

vim.opt.guicursor='n-v-c:block-Cursor/lCursor,' ..
                  'i-ci:ver25-Cursor/lCursor,' ..
                  've:ver35-Cursor,' ..
                  'r-cr:hor20-Cursor/lCursor,' ..
                  'o:hor50-Cursor,' ..
                  'sm:block-Cursor-blinkwait175-blinkoff150-blinkon175,' ..
                  'a:blinkwait200-blinkoff500-blinkon500-Cursor/lCursor'

vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true

-- This breaks gitsigns, come back to this later
--vim.opt.statuscolumn = '%=%{v:relnum?v:relnum."    ":v:lnum."      "}'
vim.opt.signcolumn = "yes"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

vim.opt.showcmd = true
vim.opt.showmode = true

vim.opt.scrolloff = 5

vim.opt.backup = false

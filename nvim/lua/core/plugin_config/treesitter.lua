require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp", "lua", "css", "dockerfile", "html", "javascript", "java", "json", "jsdoc", "markdown", "php", "regex", "sql" },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true }
}

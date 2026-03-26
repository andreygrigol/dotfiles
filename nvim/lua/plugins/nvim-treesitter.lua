return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "lua",
            "c",
            "rust",
            "python",
			"html",
			"css",
			"typescript",
        },
        auto_install = false,
    }
}

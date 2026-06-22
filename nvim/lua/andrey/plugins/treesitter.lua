return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
	"windwp/nvim-ts-autotag",
    },
    config = function()
	require("nvim-treesitter").setup({
	    highlight = { enable = true },
	    indent = { enable = true },
	    autotag = { enable = true },
	    ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"jsx",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"python",
		"rust",
		"lua",
		"c",
		"cpp",
		"gdscript",
	    },
	    incremental_selection = {
		enable = true,
		keymaps = {
		    init_selection = "<C-space>",
		    node_incremental = "<C-space>",
		    scope_incremental = false,
		    node_decremental = "<bs>",
		},
	    },
	})
    end,
}

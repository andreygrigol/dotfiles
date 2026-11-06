return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000 ,
    config = function()
	require("gruvbox").setup({
	    transparent_mode = true,
        italic = {
            strings = false,
            emphasis = false,
            comments = false,
            operators = false,
            folds = false,
        },
	})
	-- vim.cmd.colorscheme "gruvbox"
        for _, group in ipairs({
            "DiagnosticUnderlineError",
            "DiagnosticUnderlineWarn",
            "DiagnosticUnderlineInfo",
            "DiagnosticUnderlineHint",
        }) do
            vim.api.nvim_set_hl(0, group, {
                undercurl = false,
                underline = true,
            })
        end
    end,
}



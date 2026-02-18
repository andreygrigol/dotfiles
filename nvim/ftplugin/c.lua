-- Linux kernel C style (buffer-local)

vim.opt_local.expandtab = false -- tabs reais
vim.opt_local.tabstop = 8
vim.opt_local.shiftwidth = 8
vim.opt_local.softtabstop = 8

vim.opt_local.textwidth = 80
vim.opt_local.colorcolumn = "81"

-- Ajuda a enxergar tabs e trailing whitespace
vim.opt_local.list = true
vim.opt_local.listchars = { tab = ">-", trail = "·" }

-- Evita auto-quebra de comentários (muita gente prefere assim no kernel)
vim.opt_local.formatoptions:remove({ "t", "c", "r", "o" })

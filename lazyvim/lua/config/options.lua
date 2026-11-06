-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local kernel_group = vim.api.nvim_create_augroup("KernelCodingStyle", { clear = true })

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = kernel_group,
  pattern = { "*/linux/*.[ch]", "*/kernel/*.[ch]" },
  callback = function()
    vim.opt_local.tabstop = 8
    vim.opt_local.softtabstop = 8
    vim.opt_local.shiftwidth = 8
    vim.opt_local.expandtab = false
    vim.opt_local.colorcolumn = "81"
    vim.opt_local.textwidth = 80
  end,
})

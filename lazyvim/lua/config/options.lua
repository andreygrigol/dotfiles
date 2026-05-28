-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.smartindent = true
vim.o.autoindent = true
vim.opt.spell = false
vim.opt.colorcolumn = "80"
vim.opt.clipboard = "unnamedplus"
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.spell = false
  end,
})
vim.opt.wrap = true
vim.opt.linebreak = true
vim.g.NERDTreeShowHidden = 1

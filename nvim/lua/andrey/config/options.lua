local opt = vim.opt

opt.number = true
opt.cursorline = true
opt.relativenumber = true
opt.shiftwidth = 4

opt.colorcolumn = "80"

opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undo"
opt.undolevels = 10000
opt.undoreload = 10000
opt.hlsearch = true
opt.clipboard = "unnamedplus"

opt.termguicolors = true

-- Persistent Undo (Allows undoing changes even after closing the file)
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Shada (Shared Data) - Preserves command, search, and register history
opt.shada = "'100,<50,s10,h"

-- Indent blankline
vim.opt.list = true

vim.api.nvim_create_autocmd("BufReadPost", {
  desc = "Open file at the last position it was edited",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

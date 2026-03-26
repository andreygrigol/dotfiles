vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.colorcolumn = "80"
vim.opt.clipboard = "unnamedplus"
vim.opt.autoindent = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	}
})

vim.cmd([[colorscheme gruvbox]])

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qq', ':wqall<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-h>', ':bprev<CR>')
vim.keymap.set('n', '<S-l>', ':bnext<CR>')
vim.keymap.set('x', "<C-j>", ":move '>+1<CR>gv=gv")
vim.keymap.set('x', "<C-k>", ":move '<-2<CR>gv=gv")

vim.opt.termguicolors = true
require("bufferline").setup{}

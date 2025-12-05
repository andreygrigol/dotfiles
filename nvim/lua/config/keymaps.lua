-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- Mapeia Ctrl+A para ir ao início da linha (usando ^)
vim.api.nvim_set_keymap("n", "<C-a>", "^", opts)

-- Mapeia Ctrl+E para ir ao fim da linha (usando $)
vim.api.nvim_set_keymap("n", "<C-e>", "$", opts)

-- Mover linha(s) selecionadas para baixo com Ctrl+J
vim.api.nvim_set_keymap("x", "<C-j>", ":move '>+1<CR>gv=gv", opts)

-- Mover linha(s) selecionadas para cima com Ctrl+K
vim.api.nvim_set_keymap("x", "<C-k>", ":move '<-2<CR>gv=gv", opts)

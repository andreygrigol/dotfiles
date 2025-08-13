-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shift+K para mover linha para cima
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move linha para cima" })

-- Shift+J para mover linha para baixo
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move linha para baixo" })

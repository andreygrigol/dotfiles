vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- Mapeia Ctrl+A para ir ao início da linha (usando ^)
vim.api.nvim_set_keymap("n", "<C-a>", "^", opts)

-- Mapeia Ctrl+E para ir ao fim da linha (usando $)
vim.api.nvim_set_keymap("n", "<C-e>", "$", opts)

-- Mover linha(s) selecionadas para baixo com Ctrl+J
vim.api.nvim_set_keymap("x", "<C-j>", ":move '>+1<CR>gv=gv", opts)

-- Mover linha(s) selecionadas para cima com Ctrl+K
vim.api.nvim_set_keymap("x", "<C-k>", ":move '<-2<CR>gv=gv", opts)

opts.desc = "Smart rename"
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

opts.desc = "Show LSP references"
keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

opts.desc = "Go to declaration"
keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

opts.desc = "Show LSP definitions"
keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

opts.desc = "Show LSP implemetations"
keymap.set("n", "gi", "<cmd>Telescope lsp_implemetations<CR>", opts)

opts.desc = "Show documentation for what is under cursor"
keymap.set("n", "K", vim.lsp.buf.hover, opts)

-- Nvim Tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

-- Quit session
keymap.set("n", "<leader>qq", "<cmd>wqall<CR>", { silent = true, desc = "Quit all" })

-- Buffers
keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", opts)
keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", opts)
keymap.set("n", "<leader>bd", "<cmd>bd<CR>", opts)

-- Toggleterm
keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", opts)

-- Indentation
keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")

-- Clean text
keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Split window
keymap.set("n", "<leader>|", "<cmd>vsplit<CR>", opts)
keymap.set("n", "<leader>-", "<cmd>hsplit<CR>", opts)

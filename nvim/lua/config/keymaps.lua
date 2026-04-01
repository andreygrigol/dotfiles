local builtin = require("telescope.builtin")

-- Grep files
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Quit
vim.keymap.set('n', '<leader>qq', ':wqall<CR>', { desc = 'Save and quit all' })
vim.keymap.set('n', '<C-q>', ':q!<CR>', { desc = 'Quit' })

-- Move lines
vim.keymap.set('x', '<C-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- LSP shenanigans
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to Declaration' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Go to references' })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover' })

-- Close buffer
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Close buffer' })

-- Indentation
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Copilot
vim.keymap.set('n', '<leader>aa', ':CopilotChatOpen<CR>', { desc = 'Open chat with Copilot' })


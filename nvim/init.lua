vim.g.mapleader = ' '

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

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

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    pcall(function()
      vim.lsp.semantic_tokens.enable(true, { bufnr = args.buf })
    end)
  end,
})

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	}
})

require("gruvbox").setup({
  overrides = {
    ["@variable"] = { fg = "#83a598" },
    ["@variable.python"] = { fg = "#8ec07c" },
    ["@parameter"] = { fg = "#fabd2f" },
    ["@function"] = { fg = "#b8bb26" },
  },
})

vim.cmd.colorscheme("gruvbox")

vim.cmd([[colorscheme gruvbox]])

require("config.keymaps")
require("config.options")
require("bufferline").setup{}
require('lualine').setup()

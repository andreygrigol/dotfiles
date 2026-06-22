return {
  "hrsh7th/cmp-nvim-lsp",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/lazydev.nvim", opts = {} },
  },
  config = function()
    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    local port = os.getenv 'GDScript_Port' or '6005'
    local cmd = vim.lsp.rpc.connect('127.0.0.1', tonumber(port))

    ---@type vim.lsp.Config
    return {
      cmd = cmd,
      filetypes = { 'gd', 'gdscript', 'gdscript3' },
      root_markers = { 'project.godot', '.git' },
    },

    vim.lsp.config("*", {
      capabilities = capabilities,
    }),
    vim.lsp.enable('gdscript'),
    vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = true,
    })
  end,
}

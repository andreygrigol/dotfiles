return {
  {
    "neovim/nvim-lspconfig",
    config = function()
	  vim.diagnostic.config({
		  virtual_text = true,
		  signs = true,
		  underline = true,
	  });
      vim.lsp.enable("pyright");
      vim.lsp.enable("lua_ls");
      vim.lsp.enable("clangd");
      vim.lsp.enable("eslint");
      vim.lsp.enable("ruff");
      vim.lsp.enable("rust_analyzer");
      vim.lsp.enable("gdscript");
    end,
  },
  {
	  "hrsh7th/cmp-nvim-lsp",
	  event = { "BufReadPre", "BufNewFile"},
	  config = function()
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local capabilities = cmp_nvim_lsp.default_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})
	  end,
  },
  {
	  "folke/lazydev.nvim",
	  opts = {}
  },
}

return {
	{
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        },
    },
  },
  {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
            "black",
			"pyright",
			"ruff",
			"rust_analyzer",
			"clangd",
			"eslint",
			"vtsls",
		}
	}
  }
}

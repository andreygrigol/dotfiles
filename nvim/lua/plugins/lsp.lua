return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "clangd", "--compile-commands-dir=./" },
          root_dir = function(fname)
            return require("lspconfig.util").find_git_ancestor(fname) or vim.fn.getcwd()
          end,
          init_options = {
            compilationDatabasePath = "./",
          },
        },
      },
    },
  },
}

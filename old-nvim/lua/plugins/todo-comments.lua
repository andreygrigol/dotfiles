return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    local todo_comments = require("todo-comments")
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    todo_comments.setup()
  end,
}

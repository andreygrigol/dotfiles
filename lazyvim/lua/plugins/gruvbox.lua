return {
  "ellisonleao/gruvbox.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      transparent_mode = true,
    }
  end,
}

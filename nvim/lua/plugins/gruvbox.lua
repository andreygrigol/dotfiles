return {
  "ellisonleao/gruvbox.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent_mode = true,
      bold = true,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
    }
  end,
}

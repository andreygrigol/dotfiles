return {
  "brenoprata10/nvim-highlight-colors",
  config = function()
    require("nvim-highlight-colors").setup({
      render = "background", -- Options: 'background', 'foreground', or 'virtual'
      enable_hex = true,     -- Highlight hex colors like #FFFFFF
      enable_short_hex = true, -- Highlight short hex like #fff
      enable_css_vars = true, -- Highlight CSS variables
    })
  end,
}

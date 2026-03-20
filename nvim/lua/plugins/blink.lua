return {
  "saghen/blink.cmp",
  opts = {
    completion = { list = { selection = { preselect = false, auto_insert = true } } },
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      -- ["<CR>"] = { "accept", "fallback" },
    },
  },
}

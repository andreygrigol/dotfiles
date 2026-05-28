return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    frontmatter = { enabled = false },
    daily_notes = {
      enabled = true,
      folder = "200 Daily",
      date_format = "DD-MM-YYYY",
    },
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        name = "Notes",
        path = "~/Documents/Shared/Notes/",
      },
    },
  },
}

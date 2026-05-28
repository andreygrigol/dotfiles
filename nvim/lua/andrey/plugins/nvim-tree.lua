return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1


	require("nvim-tree").setup({
	  view = {
	    width = 30,
	    relativenumber = true,
	  },
	  -- change folder arrow icons
	  renderer = {
	    indent_markers = {
	      enable = true,
	    },
	    icons = {
	      glyphs = {
		folder = {
		  arrow_closed = "", -- arrow when folder is closed
		  arrow_open = "", -- arrow when folder is open
		},
	      },
	    },
	  },
	  -- disable window_picker for
	  -- explorer to work well with
	  -- window splits
	  actions = {
	    open_file = {
	      window_picker = {
		enable = false,
	      },
	    },
	  },
	  filters = {
	    custom = { ".DS_Store" },
	  },
	  git = {
	    ignore = false,
	  },
	})
    end
}

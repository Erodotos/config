-- Telescope setup
local telescope = require('telescope')

telescope.setup {
    defaults = {
        prompt_prefix = "🔍 ",
	file_ignore_patterns = {"node_modules", ".git", "dist", ".next", "out", "pnpm-lock.yaml"},
	vimgrep_arguments = {
		"rg",
		"--color=never",
		"--no-heading",
		"--with-filename",
		"--line-number",
		"--column",
		"--hidden",
		"--iglob",
		"!yarn.lock",
		"--smart-case",
		"-u"
	},
    },
    extensions = {
    project = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case" -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      },
      base_dirs = {
        {path = "~/Sources", max_depth = 2}
      },
      hidden_files = true
    },
    bibtex = {
      format = 'plain'
    }
  }
}

require('telescope').load_extension('fzf')
require("gitsigns").setup({
	signs = {
		add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
		change = { hl = "GitSignsChange", text = "│", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
		delete = { hl = "GitSignsDelete", text = "_", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		changedelete = { hl = "GitSignsChange", text = "~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
	},
	numhl = false,
	linehl = false,
	keymaps = {
		-- Default keymap options
		noremap = true,
		buffer = true,
	},
	watch_gitdir = {
		interval = 1000,
		follow_files = true,
	},
	current_line_blame = false,
	current_line_blame_opts = {
		virt_text = true,
		delay = 1000,
		virt_text_pos = "eol",
	},
	sign_priority = 6,
	update_debounce = 1000,
	status_formatter = nil, -- Use default
	word_diff = false,
	diff_opts = {
		internal = true,
	},
})

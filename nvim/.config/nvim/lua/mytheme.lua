function usethemer()
	require("themer").setup({
		colorscheme = "tokyonight",
		transparent = true,
		term_colors = true,

		styles = {
			-- constant = { style = "bold" },
			-- constantBuiltIn = { style = "bold" },
			-- keyword = { style = "italic" },
			-- keywordBuiltIn = { style = "italic" },
		},
		plugins = {
			treesitter = true,
			indentline = true,
			barbar = true,
			bufferline = true,
			cmp = true,
			gitsigns = true,
			lsp = true,
			telescope = true,
		},
		remaps = {
			palette = {
				gruvbox = {
					["dimmed"] = { ["subtle"] = "#fe8019" },
				},
			},
		},
	})
end

usethemer()

-- vim.cmd("colorscheme solarized8")
-- vim.cmd("colorscheme gruvbox")

-- vim.cmd("hi LineNr guifg=#7c6f64")
-- vim.cmd("hi ColorColumn guibg=#3c3836")

-- nord
-- vim.cmd("colorscheme nord")
-- vim.cmd("hi ColorColumn guibg=#3b4252")
-- vim.cmd("hi CursorColumn guibg=#3b4252")
-- vim.cmd("hi CursorLine guibg=#3b4252")

-- tokyonight
-- vim.cmd("hi ColorColumn guibg=#32334a")

-- rose_pine
-- vim.cmd("hi ColorColumn guibg=#403d52")

-- vim.cmd("hi Normal guibg=none")
-- vim.cmd("hi LineNr guibg=none")

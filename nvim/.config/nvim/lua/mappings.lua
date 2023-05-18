-- vim.keymap.set("n", '<leader>y', '+y')
-- vim.keymap.set("n", '<leader>p', '+p')

vim.keymap.set("x", "<leader>p", '"_dP')
-- vim.keymap.set("x", "<leader>p", "p")
-- vim.keymap.set("x", "p", "pgvy")
-- vim.keymap.set("x", "p", "\"_dP")

vim.keymap.set("n", "<C-Up>", ":resize +3<cr>")
vim.keymap.set("n", "<C-Down>", ":resize -3<cr>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -3<cr>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +3<cr>")

vim.keymap.set("n", "<leader>,i", ":nohls<CR>")
-- vim.keymap.set("n", "<leader>ir", function() require('plenary.reload').reload_module('something') end)
--
vim.keymap.set("n", "<C-e>", ":Ex<CR>")

vim.keymap.set("n", "<C-j>", ":cnext<CR>")
vim.keymap.set("n", "<C-k>", ":cprev<CR>")

vim.keymap.set("n", "<leader>gds", ":Gdiffsplit!<CR>")
vim.keymap.set("n", "<leader>gh", ":diffget //2<CR>")
vim.keymap.set("n", "<leader>gl", ":diffget //3<CR>")

vim.keymap.set("n", "<leader>gf", require("telescope.builtin").find_files)
vim.keymap.set("n", "<C-n>", function() require("telescope.builtin").git_files({show_untracked = true}) end)
vim.keymap.set("n", "<leader>gt", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<leader>gc", require("telescope.builtin").git_branches)
vim.keymap.set("n", "<leader>gw", require("telescope").extensions.git_worktree.git_worktrees)
vim.keymap.set("n", "<leader>ts", require("telescope.builtin").lsp_document_symbols)
vim.keymap.set("n", "<leader>tw", require("telescope.builtin").lsp_dynamic_workspace_symbols)
vim.keymap.set("n", "<leader>tx", function()
	require("telescope.builtin").diagnostics({ severity_limit = 1 })
end)
vim.keymap.set("n", "<leader>th", require("telescope.builtin").help_tags)
vim.keymap.set("n", "<leader>mm", require("telescope.builtin").man_pages)

vim.keymap.set("n", "<C-p>", vim.lsp.buf.code_action)
-- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>gdt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>gdi", vim.lsp.buf.implementation)
-- vim.keymap.set("n", "<leader>gdr", vim.lsp.buf.references)

vim.keymap.set("n", "<leader>gl", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<leader>ht", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>vll", function()
	vim.diagnostic.setloclist({ open_loclist = false })
end)
vim.keymap.set("n", "<leader>vsd", vim.diagnostic.open_float)

vim.keymap.set("n", "<leader>va", vim.lsp.buf.workspace_symbol)
vim.keymap.set("n", "<leader>vi", vim.lsp.buf.document_symbol)

vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
vim.keymap.set("n", "<leader>hl", require("harpoon.ui").toggle_quick_menu)

vim.keymap.set("n", "<leader>hvh", function()
	require("harpoon.term").gotoTerminal(1)
end)
-- vim.keymap.set("n", "<leader>hvt", function() require("harpoon.term").gotoTerminal(2) end)
-- vim.keymap.set("n", "<leader>hvn", function() require("harpoon.term").gotoTerminal(3) end)
-- vim.keymap.set("n", "<leader>hvs", function() require("harpoon.term").gotoTerminal(4) end)
vim.keymap.set("n", "<leader>hch", function()
	require("harpoon.term").sendCommand(1, "make build && gdb ./main\n")
end)
vim.keymap.set("n", "<C-h>", function()
	require("harpoon.ui").nav_file(1)
end)
vim.keymap.set("n", "<C-t>", function()
	require("harpoon.ui").nav_file(2)
end)
vim.keymap.set("n", "<c-l>", function()
	require("harpoon.ui").nav_file(3)
end)
-- vim.keymap.set("n", "<c-s>", function() require("harpoon.term").gotoTerminal(1) end)

vim.keymap.set("n", "<leader>rj", require("trevj").format_at_cursor)
vim.keymap.set("n", "<leader>shs", require("gitsigns").stage_hunk)
vim.keymap.set("n", "<leader>shu", require("gitsigns").undo_stage_hunk)
vim.keymap.set("n", "<leader>shr", require("gitsigns").reset_hunk)
vim.keymap.set("n", "<leader>shv", require("gitsigns").preview_hunk)
vim.keymap.set("n", "<leader>shn", require("gitsigns").next_hunk)
vim.keymap.set("n", "<leader>shp", require("gitsigns").prev_hunk)
vim.keymap.set("n", "<leader>shx", function()
	require("gitsigns").blame_line(true)
end)

vim.keymap.set("n", "<leader>dc", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<C-s>", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<leader>ds", function()
	require("dap").step_into()
end)
vim.keymap.set("n", "<leader>df", function()
	require("dap").step_out()
end)
vim.keymap.set("n", "<leader>b", function()
	require("dap").toggle_breakpoint()
end)
-- vim.keymap.set('n', '<leader>B', function() require('dap').set_breakpoint() end)
-- vim.keymap.set('n', '<leader>lp', function()
-- 	require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
-- end)
vim.keymap.set("n", "<leader>dr", function()
	require("dap").repl.open()
end)
-- vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end)
vim.keymap.set({ "n", "v" }, "<leader>dh", function()
	require("dap.ui.widgets").hover()
end)
-- vim.keymap.set({'n', 'v'}, '<leader>dp', function()
--   require('dap.ui.widgets').preview()
-- end)
vim.keymap.set("n", "<leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
vim.keymap.set("n", "<leader>de", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)

vim.cmd([[
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

nnoremap :ut :UndotreeToggle
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <leader>n :Todo <CR>
imap <C-c> <Esc>

nnoremap <leader>,e :e <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <leader>,t :!mkdir -p <C-R>=expand("%:p:h") . "/" <CR>
" nmap <F2> "=strftime('%Y-%m-%d %H:%M:%S %z')<C-M>p

]])

--[[
nnoremap n nzzzv
nnoremap N Nzzzv
]]
--

"autocomplete
set completeopt=menuone,noinsert,noselect

"set shortmess+=c
let g:completion_enable_auto_popup = 1
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:completion_confirm_key = "\<C-y>"

" languages servers
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua<<EOC
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.hls.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.denols.setup{
    filetypes = { "typescript" } 
}
require'lspconfig'.tsserver.setup {}
require'lspconfig'.ccls.setup{}
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.dartls.setup{ }

local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/".."Linux".."/lua-language-server" 
require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  -- cmd = {"/usr/bin/lua-language-server", "-E", "/usr/share/lua-language-server/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    },
  },
}

-- require("flutter-tools").setup{ flutter_path = "/opt/flutter" }

EOC


"lua require'lspconfig'.sumneko_lua.setup { is_installed=false };
"lua <<EOF
"local custom_nvim_lspconfig_attach = function(...) end
"require('nlua.lsp.nvim').setup(require('lspconfig'), {
"  on_attach = custom_nvim_lspconfig_attach,
"
"  -- Include globals you want to tell the LSP are real :)
"  globals = {
"    -- Colorbuddy
"    "Color", "c", "Group", "g", "s",
"  }
"})
"EOF

autocmd BufEnter * lua require'completion'.on_attach()

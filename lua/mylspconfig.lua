require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.hls.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.svelte.setup{}
require'lspconfig'.tsserver.setup {}
require'lspconfig'.cssls.setup{}
require'lspconfig'.ccls.setup{}
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.dartls.setup{ }
require'lspconfig'.denols.setup{
    filetypes = { "typescript" } 
}

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

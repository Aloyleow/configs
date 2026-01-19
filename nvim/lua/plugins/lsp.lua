return {
    "neovim/nvim-lspconfig",
    config = function()
    vim.lsp.config.lua_ls = {
      cmd = { "lua-language-server" },
         settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          telemetry = {
            enable = false,
          },
        },
      },
    }
    -- 2. Enable the server (NEW API)
    vim.lsp.enable("lua_ls")
    vim.diagnostic.config({ virtual_text = true })
  end,
}

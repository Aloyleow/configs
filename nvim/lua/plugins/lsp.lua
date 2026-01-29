return {
  "neovim/nvim-lspconfig",
  config = function()

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    -- helper to apply capabilities safely
    local function cmpit(name)
      if vim.lsp.config[name] then
        vim.lsp.config[name].capabilities = capabilities
      end
    end

    require("lsp.rust")
    require("lsp.ts")
    require("lsp.html")
    require("lsp.css")
    require("lsp.json")

    cmpit("rust_analyzer")
    cmpit("lua_ls")
    cmpit("tsserver")
    cmpit("html")
    cmpit("cssls")
    cmpit("jsonls")

    -- diagnostics UI
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      severity_sort = true,
    })
  end,
}



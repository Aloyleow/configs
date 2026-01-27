vim.lsp.config.rust_analyzer = {
  cmd = { "rust-analyzer" },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        command = "clippy",
      },
      procMacro = {
        enable = true,
      },
    },
  },
}

vim.lsp.enable("rust_analyzer")


return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "biome" },
      typescript = { "biome" },
      json = { "biome" },
      html = { "biome" },
      css = { "biome" },
      javascriptreact = { "biome" },
      typescriptreact = { "biome" },
      jsonc = { "biome" },
      -- sql = { "sqlfluff" },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
    },
  },
}

return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", 
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", 
    "hrsh7th/cmp-buffer",   -- buffer words
    "hrsh7th/cmp-path",     -- filesystem paths
    "L3MON4D3/LuaSnip",     -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- ????
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      completion = {
        autocomplete = { cmp.TriggerEvent.TextChanged },
      },

      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<Esc>"] = cmp.mapping.abort(),
      }),

      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}


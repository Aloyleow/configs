require("config.lazy")

vim.cmd("colorscheme rose-pine-moon")
vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 then
          require("nvim-tree.api").tree.open()
        end
      end
})





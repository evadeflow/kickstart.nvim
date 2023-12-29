return {
    'nvimtools/none-ls.nvim',
    config = function()
        local null_ls = require 'null-ls'
        null_ls.setup {
            sources = {
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.shfmt,
                null_ls.builtins.formatting.stylua,
            },
        }
        vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, { desc = 'Format current buffer' })
    end,
}

return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        require('which-key').setup({
            preset = 'modern',
            delay = 500,
        })

        -- Document existing key chains
        require('which-key').add({
            { '<leader>h', group = 'Git hunks' },
            { '<leader>t', group = 'Toggle' },
            { '<leader>x', group = 'Trouble/Diagnostics' },
            { '<leader>c', group = 'Code' },
            { '<leader>e', group = 'Explorer' },
        })
    end
}

return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        -- Disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require('nvim-tree').setup({
            view = {
                width = 35,
            },
            renderer = {
                group_empty = true,
                icons = {
                    show = {
                        git = true,
                        folder = true,
                        file = true,
                        folder_arrow = true,
                    },
                },
            },
            filters = {
                dotfiles = false,
                custom = { '^.git$' },
            },
            git = {
                enable = true,
                ignore = false,
            },
        })

        -- Keybindings
        vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = 'Toggle file explorer' })
        vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFile<cr>', { desc = 'Find file in explorer' })
    end
}

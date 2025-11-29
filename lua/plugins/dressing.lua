return {
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
    config = function()
        require('dressing').setup({
            input = {
                enabled = true,
                default_prompt = '➤ ',
                border = 'rounded',
            },
            select = {
                enabled = true,
                backend = { 'telescope', 'builtin' },
                builtin = {
                    border = 'rounded',
                },
            },
        })
    end
}

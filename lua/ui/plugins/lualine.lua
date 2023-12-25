return {
-- Set lualine as statusline
'nvim-lualine/lualine.nvim',
dependencies = {
'nvim-tree/nvim-web-devicons', -- Icons enabled
},
-- See `:help lualine.txt`
config = function ()
require('lualine').setup({
options = {
icons_enabled = true,
theme = 'carbonfox',
component_separators = '|',
section_separators = '',
}
})
end,
}
-- vim: ts=2 sts=2 sw=2 et

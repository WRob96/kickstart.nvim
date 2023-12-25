return {
'nanozuki/tabby.nvim',
dependencies = {
'nvim-lualine/lualine.nvim',
},
config = function ()
vim.o.showtabline = 2
require('tabby.tabline').use_preset('active_wins_at_tail', {
theme = {
fill = 'TabLineFill', -- tabline background
head = 'TabLine', -- head element highlight
current_tab = 'TabLineSel', -- current tab label highlight
tab = 'TabLine', -- other tab label highlight
win = 'TabLine', -- window highlight
tail = 'TabLine', -- tail element highlight
},
nerdfont = true, -- whether use nerdfont
lualine_theme = 'carbonfox', -- lualine theme name
buf_name = {
mode = 'unique',
},
})
end,
}
-- vim: ts=2 sts=2 sw=2 et

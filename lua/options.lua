-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = true

-- Enable cursor line
vim.opt.cursorline = true

-- Other visual options
vim.o.pumblend = 15
vim.o.winblend = 10
-- Status Column default settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

--  Copy and paste for WSL added
--  `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'
vim.g.clipboard = {
  name = 'WslClipboard',
     copy = {
        ['+'] = 'clip.exe',
        ['*'] = 'clip.exe',
      },
     paste = {
        ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
     },
     cache_enabled = 0,
}

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Text formatting options:
vim.opt.breakindent = true
vim.opt.breakindentopt = "shift:2"
vim.opt.wrap = true

-- List options for nonprinting characters
vim.opt.listchars = "tab:<->,trail:·"
vim.opt.list = true

-- vim: ts=2 sts=2 sw=2 et

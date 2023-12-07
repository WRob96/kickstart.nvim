-- File: lua/custom/plugins/indent-blankline.lua
  return {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
  },
    main = 'ibl',
    opts = {},
    config = function ()
      require('ibl').setup({
      enabled = true,
      debounce = 100,
      viewport_buffer = {
        min = 30,
        max = 500,
      },
      indent = {
        char = {'▏'},

        smart_indent_cap = true,
        priority = 2,
      },
      whitespace = {
        highlight = { "Function", "Label"},
        remove_blankline_trail = false,
      },
      scope = {
      char = '▎',
      show_end = true,
      show_start = true,
        highlight = { "Function", "Label"},
      }
    })
     local hooks = require "ibl.hooks"
     hooks.register(
     hooks.type.WHITESPACE,
     hooks.builtin.hide_first_space_indent_level
     )
    end,
  }


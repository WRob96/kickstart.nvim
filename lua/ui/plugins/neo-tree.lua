-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup({
      view = { adaptive_size = true }
    })
    vim.keymap.set('n', '<C-_>', function() -- <C-_> is the alias for the 0x1F command code, which is returned by Ctrl+/
      vim.cmd("Neotree toggle current reveal_force_cwd")
    end, { desc = "Toggle [N]eo-tree" })
    vim.keymap.set('n', '|', function()
      vim.cmd("Neotree reveal")
    end, { desc = "Reveal Neo-tree" })
    vim.keymap.set('n', '<leader>N', function()
      vim.cmd("Neotree float reveal_file=<cfile> reveal_force_cwd")
    end, { desc = "Goto [N]eotree Directory" })
    vim.keymap.set('n', '<leader>b', function()
      vim.cmd("Neotree toggle show buffers right")
    end, { desc = "Toggle Show [B]uffers" })
    vim.keymap.set('n', '<leader>gs', function()
      vim.cmd("Neotree float git_status")
    end, { desc = "Show Git [S]tatus" })
  end,
}
-- vim: ts=2 sts=2 sw=2 et

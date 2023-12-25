
return { "EdenEast/nightfox.nvim",
    priority=1000,
    reloadable = true,
    lazy = false,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
          dim_inactive = true,
          styles = {
            comments = "bold,italic",
            constants = "bold",
          },
        }
      })
      vim.cmd.colorscheme("carbonfox")
  end,
}
-- vim: ts=2 sts=2 sw=2 et

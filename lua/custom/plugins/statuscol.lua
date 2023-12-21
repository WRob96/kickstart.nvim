-- Old StatusColumn
-- vim.opt.statuscolumn = '%s%=%{v:wrap ? "" : v:lnum} %#FoldColumn#%@v:lua.StatusColumn.handler.fold@%{v:lua.StatusColumn.display.fold()}r#StatusColumnBorder#▐%#StatusColumnBuffer#' --%s %l%< %=%r
return {
  "luukvbaal/statuscol.nvim",
    dependencies = {
      'gitsigns.nvim',
    },
    config = function()
      local builtin = require("statuscol.builtin")
      require("statuscol").setup({
        relculright = false,
        segments = {
          {
            text = { "%s" }, click = "v:lua.ScSa"
          },
          {
            sign = { name = { "Diagnostic" }, maxwidth = 2, auto = true },
            click = "v:lua.ScSa"
          },
          { text = { builtin.lnumfunc }, click = "v:lua.ScLa", },
          {
            sign = { name = { ".*" }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
            click = "v:lua.ScSa"
          },
          { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
          { text = { "╎"}, hl = "NonText" },
        }
      })
  end,
}

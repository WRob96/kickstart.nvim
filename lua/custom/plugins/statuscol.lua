-- Old StatusColumn
-- vim.opt.statuscolumn = '%s%=%{v:wrap ? "" : v:lnum} %#FoldColumn#%@v:lua.StatusColumn.handler.fold@%{v:lua.StatusColumn.display.fold()}r#StatusColumnBorder#▐%#StatusColumnBuffer#' --%s %l%< %=%r
return {
  "luukvbaal/statuscol.nvim",
    dependencies = {
      'gitsigns.nvim',
    },
    config = function()
      local builtin = require("statuscol.builtin")
      local cl = vim.api.nvim_get_hl_by_name("CursorLine", true)
      local nt = vim.api.nvim_get_hl_by_name("NonText", true)
      nt.background = cl.background
      vim.api.nvim_set_hl(0, "StatusColumnBorder", nt)
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
          {
            sign = { name = { ".*" }, auto = true, wrap = true },
            text = {
              "▕",
              function(args)
                return (vim.o.cursorline and (args.relnum == 0) and "%#StatusColumnBorder#" or "%#NonText#")
              end,
              "▎",
            },
            hl = (builtin.lnumfunc == 0 and "StatusColumnBorder" or "NonText"),
          },
        }
      })
  end,
}
-- vim: ts=2 sts=2 sw=2 et

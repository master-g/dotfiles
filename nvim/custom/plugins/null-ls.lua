--[[
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.diagnostics.eslint,
    },
})
--]]

local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
  -- frontend
  b.formatting.prettierd.with {
    filetypes = { "html", "json", "markdown", "scss", "css", "typescript", "javascript" },
  },

  -- lua
  b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

  -- rust
  b.formatting.rustfmt,
}

local M = {}

M.setup = function()
  null_ls.setup {
    debug = false,
    sources = sources,
  }
end

return M

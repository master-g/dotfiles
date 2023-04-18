---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  -- theme
  theme = "onedark",
  theme_toggle = { "onedark", "onedark_light" },

  -- highlights
  hl_override = highlights.override,
  hl_add = highlights.add,

  -- statusline
  statusline = {
    theme = "vscode_colored"
  },

  -- dash board
  nvdash = {
    load_on_startup = true
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M

-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.plugins = {
    status = {
        neoscroll = true,
        colorizer = true,
        truezen = true,
    },
    options = {
        nvimtree = {
            enable_git = 1,
        },
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig"
        }
    },
  user = {
    ["goolord/alpha-nvim"] = {
        disable = false,
    },
    ["fatih/vim-go"] = {
        disable = false,
    }
  },
}

M.ui = {
   theme = "gruvchad",
}

M.options = {

  user = function ()
    vim.opt.clipboard = "unnamedplus"
    vim.opt.ruler = true
    vim.opt.relativenumber = true
    vim.opt.expandtab = true
    vim.opt.shiftwidth = 4
    vim.opt.smartindent = true
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.history = 500
  end,
}

return M

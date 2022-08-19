local M = {}

M.plugins = {
	user = {
		["neovim/nvim-lspconfig"] = {
			opt = true,
			setup = function()
			  require("core.lazy_load").on_file_open "nvim-lspconfig"
			end,
			config = function()
			  require "plugins.configs.lspconfig"
			  require "custom.plugins.lspconfig"
			end,
		},
		["jose-elias-alvarez/null-ls.nvim"] = {
			after = "nvim-lspconfig",
			config = function()
				require("custom.plugins.null-ls")
			end,
		},
    ["goolord/alpha-nvim"] = {
      disable = false,
    }
	},

	override = {
		["nvim-treesitter/nvim-treesitter"] = {
			ensure_installed = {
				"bash",
				"comment",
				"cpp",
				"css",
				"graphql",
				"html",
				"javascript",
				"json",
				"lua",
				"regex",
				"tsx",
				"typescript",
				"vim",
				"yaml",
        "c",
        "rust",
        "lua",
			},
		},

		["williamboman/mason.nvim"] = {
			ensure_installed = {
				-- lua stuff
				"lua-language-server",
				"stylua",

				-- web dev
				"css-lsp",
				"deno",
				"emmet-ls",
				"eslint-lsp",
				"html-lsp",
				"json-lsp",
				"typescript-language-server",
				"yaml-language-server",

        -- c/c++
        "clangd",

        -- go
        "gopls",

        -- python
        "pyright",

        -- rust
        "rust-analyzer",
        "taplo",

				-- shell
				"shellcheck",
			},
		},
	},

	options = {
		lspconfig = {
			setup_lspconf = "custom.plugins.lspconfig",
		},
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
      vim.opt.guifont="MonoLisa NF:h14"
      vim.g.neovide_cursor_vfx_mode="railgun"
      -- vim.g.neovide_remember_window_size=true
      vim.g.neovide_fullscreen = true
    end
	},

	status = { colorizer = true },
}

M.ui = { theme = "gruvbox" }

M.mappings = require("custom.mappings")

return M

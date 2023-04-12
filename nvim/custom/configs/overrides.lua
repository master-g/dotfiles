local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "rust",
    "solidity",
    "cpp",
    "json",
    "graphql",
    "regex",
    "yaml",
    "toml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- golang
    "gopls",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- rust stuff
    "rust-analyzer",

    -- solidity
    "solang",

    -- config files
    "taplo",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- Copilot
M.copilot = {
  suggestion = {
    auto_trigger = true,
  }
}

return M

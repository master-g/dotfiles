local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local servers = { "html", "cssls", "bashls", "clangd" , "gopls", "rust_analyzer", "tsserver", "pyright" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         -- root_dir = vim.loop.cwd,
         flags = {
            debounce_text_changes = 150,
         },
      }
   end

   lspconfig["rust_analyzer"].setup {
       on_attach = function(client, bufnr)
           client.resolved_capabilities.document_formatting = false
           attach(client, bufnr)
       end
   }

   -- emmet

   local configs = require "lspconfig/configs"

   configs.ls_emmet = {
      default_config = {
         cmd = { "ls_emmet", "--stdio" },
         filetypes = { "html", "css", "scss" },
         root_dir = function(fname)
            return vim.loop.cwd()
         end,
         settings = {},
      },
   }
end

return M

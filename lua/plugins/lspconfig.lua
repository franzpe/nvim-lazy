return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").on_attach(function(_, buffer)
          vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
          vim.keymap.set("n", "<leader>cu", ":TypescriptRemoveUnused<cr>", { desc = "Remove unused", buffer = buffer })
        end)
      end,
    },
    opts = {
      diagnostics = {
        float = {
          border = "rounded",
          source = "always",
        },
      },
    },
  },
}

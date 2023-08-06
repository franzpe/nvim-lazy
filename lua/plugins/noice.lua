-- https://github.com/Alexis12119/nvim-config/blob/7de83ad3744d7c57feca225e673e46cd62d3ea52/lua/plugins/noice.lua#L15
-- Enhances lsp

return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
}

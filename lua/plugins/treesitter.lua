return {
  {
    "nvim-treesitter/nvim-treesitter",
    indent = { enable = true },
    opts = function(_, opts)
      opts.autotag = { enable = true, enable_close_on_slash = false }

      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ron", "rust", "toml" })
      end
    end,
  },
}

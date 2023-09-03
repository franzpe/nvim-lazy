return {
  {
    -- zen mode
    { "folke/zen-mode.nvim" },

    -- auto closing
    { "windwp/nvim-ts-autotag" },

    --multi cursor
    { "mg979/vim-visual-multi" },

    --golang extras
    {
      "olexsmir/gopher.nvim",
      keys = {
        { "<leader>cgsj", "<cmd>GoTagAdd json<cr>", desc = "Add json struct tag" },
        { "<leader>cgsy", "<cmd>GoTagAdd yaml<cr>", desc = "Add yaml struct tag" },
      },
      run = function(_, opts)
        require("gopher").setup(opts)
      end,
    },
  },
}

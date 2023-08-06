-- nvim-cmp configs
return {
  -- customize nvim-cmp configs
  -- Use <tab> for completion and snippets (supertab)
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  -- then: setup supertab in cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- Adds cmp-emoji
      "hrsh7th/cmp-emoji",
      -- Adds copilot cmp
      -- "zbirenbaum/copilot.lua",
      -- "zbirenbaum/copilot-cmp",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.window = {
        completion = cmp.config.window.bordered({
          scrollbar = false,
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
        }),
        documentation = cmp.config.window.bordered({
          scrollbar = false,
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
        }),
      }

      -- Add emoji to cmp sources
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
      -- opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "copilot" } }))

      -- Configure <TAB> like in VSCode
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.confirm({ select = false })
          -- if the popup is not visible then open the popup
          elseif has_words_before() then
            cmp.complete()
          -- otherwise fallback
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end),
      })
    end,
  },
}

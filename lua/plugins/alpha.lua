return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[ 
      
      
██████   ██████  ██████   ██████   ██████ ███████ ██   ██    ██████  ███████ ██    ██
██   ██ ██    ██ ██   ██ ██    ██ ██      ██      ██  ██     ██   ██ ██      ██    ██
██████  ██    ██ ██████  ██    ██ ██      █████   █████      ██   ██ █████   ██    ██
██      ██    ██ ██   ██ ██    ██ ██      ██      ██  ██     ██   ██ ██       ██  ██ 
██       ██████  ██████   ██████   ██████ ███████ ██   ██ ██ ██████  ███████   ████  
                                                                                     
                                      "FranzP"                                 
                                    
]]

    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
    opts.section.buttons.val = {}

    opts.section.buttons.val = {
      opts.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
      opts.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
      opts.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
      opts.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
      opts.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
      opts.button("q", " " .. " Quit", ":qa<CR>"),
    }

    opts.opts.layout[1].val = 10
  end,
  config = function(_, dashboard)
    require("alpha").setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)

        dashboard.section.footer.val = "\n \n" .. "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"

        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}

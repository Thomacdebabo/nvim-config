return   {
    'olimorris/codecompanion.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    opts = {
      strategies = {
        -- Change the default chat adapter
        chat = {
          adapter = 'deepseek',
          inline = 'deepseek',
        },
      },
      adapters = {
        deepseek = function()
          return require('codecompanion.adapters').extend('ollama', {
            name = 'deepseek', -- Give this adapter a different name to differentiate it from the default ollama adapter
            schema = {
              model = {
                default = 'deepseek-coder',
              },
            },
          })
        end,
      },
      opts = {
        log_level = 'DEBUG',
      },
      display = {
        diff = {
          enabled = true,
          close_chat_at = 240, -- Close an open chat buffer if the total columns of your display are less than...
          layout = 'vertical', -- vertical|horizontal split for default provider
          opts = { 'internal', 'filler', 'closeoff', 'algorithm:patience', 'followwrap', 'linematch:120' },
          provider = 'default', -- default|mini_diff
        },
      },
    },
}
    

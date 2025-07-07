return {
  -- Copilot Plugin
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot', -- Command to trigger Copilot (e.g., for :Copilot status)
    event = 'InsertEnter', -- Load Copilot when entering Insert mode
    config = function()
      -- Make sure to require the plugin and then call its setup function.
      -- The `require("copilot").setup({})` is where you can pass specific options.
      -- For basic usage, an empty table {} is fine to enable defaults.
      require('copilot').setup {
        copilot_node_command = vim.fn.expand '$HOME' .. '/.local/share/mise/installs/node/22.17.0/bin/node', -- Node.js version must be > 20
        suggestion = {
          enabled = true,
          auto_trigger = true, -- Automatically suggest completions
          debounce = 75, -- Delay in ms before suggesting
          keymap = {
            accept = '<C-l>', -- Key to accept the suggestion
            next = '<C-j>', -- Key to cycle to the next suggestion
            prev = '<C-k>', -- Key to cycle to the previous suggestion
            dismiss = '<C-h>', -- Key to dismiss the suggestion
          },
        },
        -- Copilot Chat is a separate plugin, but often used with Copilot.
        -- If you want to use Copilot Chat as well, you'd configure it separately
        -- or include it here if you're setting it up through this file.
        -- For now, we're just focusing on the core Copilot suggestions.

        -- You can add more configuration options here if needed.
        -- Refer to the `copilot.lua` plugin's documentation for a full list.
        -- Example: panel = { enabled = true, auto_refresh = true }
      }

      -- Optionally, you can set up specific keymaps if you prefer them
      -- different from the defaults provided by the plugin.
      -- For example, to map `<Tab>` to accept the suggestion:
      -- vim.keymap.set('i', '<Tab>', '<Plug>(copilot.accept)', { silent = true, noremap = true })
      -- vim.keymap.set('i', '<S-Tab>', '<Plug>(copilot.prev)', { silent = true, noremap = true })
      -- vim.keymap.set('i', '<C-j>', '<Plug>(copilot.next)', { silent = true, noremap = true })
    end,
    dependencies = {
      -- If you want Copilot Chat, you'll add its plugin here:
      -- { "CopilotCrate/copilot.vim", ft = "copilot", cmd = "Copilot" }, -- If using copilot.vim
      -- Or for the newer "zbirenbaum/copilot.lua" with chat:
      -- { "CopilotCrate/copilot.vim", ft = "copilot", cmd = "Copilot" }, -- for copilot.vim
      -- { "CopilotCrate/copilot.vim", ft = "copilot", cmd = "Copilot" }, -- if copilot.vim is still relevant
      -- The primary way to get chat with zbirenbaum/copilot.lua is through `copilot.lua` itself
      -- if it has chat features integrated or via companion plugins.
      -- For instance, you might see mentions of `CopilotChat.nvim` or similar.
      -- For now, sticking to core suggestions:
    },
  },

  -- Copilot Chat Plugin (Optional, but highly recommended if you want chat features)
  -- If you want Copilot Chat, uncomment and configure this section.
  -- The most common way is `CopilotChat.nvim`
  -- {
  --   "CopilotCrate/copilot.vim", -- This might be a placeholder or legacy reference.
  --   -- The modern way for chat is usually a separate plugin like `CopilotChat.nvim`.
  --   -- Let's assume you're using that if you want chat.
  -- },
  -- {
  --   "CopilotChat.nvim",
  --   dependencies = {
  --     "zbirenbaum/copilot.lua",
  --     "CopilotCrate/copilot.vim", -- Sometimes required as a dependency for chat
  --     "nvim-cmp", -- For completion integration
  --   },
  --   config = function()
  --     require("CopilotChat").setup({
  --       -- Your Copilot Chat configuration here
  --       -- For example:
  --       -- copilot_completion_icon = " ", -- Example icon
  --     })
  --   end,
  -- },
}

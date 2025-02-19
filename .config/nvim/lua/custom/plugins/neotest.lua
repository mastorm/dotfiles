return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'Issafalcon/neotest-dotnet',
  },
  setup = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-dotnet',
      },
    }

    vim.keymap.set('n', '<leader>tn', function()
      require('neotest').run.run()
    end, { desc = '[T]est [N]earest' })

    vim.keymap.set('n', '<leader>tn', function()
      require('neotest').output.open { enter = true }
    end, { desc = '[T]est [O]utput' })
  end,
}

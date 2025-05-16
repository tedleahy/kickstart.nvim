return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    window = {
      mappings = {
        ['P'] = {
          'toggle_preview',
          config = {
            use_float = false,
            -- use_image_nvim = true,
            -- title = 'Neo-tree Preview',
          },
        },
      },
    },
  },
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'File explorer' },
  },
}

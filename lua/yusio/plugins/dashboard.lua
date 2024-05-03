return{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
        theme = 'hyper', --  theme is doom and hyper default is hyper
        disable_move = 'false',   --  default is false disable move keymap for hyper
        shortcut_type = 'number',  --  shorcut type 'letter' or 'number'
        config = {},    --  config used for theme
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

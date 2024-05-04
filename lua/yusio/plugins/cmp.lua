return{
    {
        -- 补全插件的主体, 实现片段收集的作用
        "hrsh7th/nvim-cmp",
        dependencies = {
            -- cmp插件附属
            'hrsh7th/cmp-nvim-lsp',     -- 从lsp中搜集片段
            'hrsh7th/cmp-buffer',       -- 从buffer中搜集片段
            'hrsh7th/cmp-path',         -- 从路径中搜集片段
            'hrsh7th/cmp-cmdline',      -- 从命令行命令里搜集片段
            -- 代码补全的应用层,实现代码补全
            'L3MON4D3/LuaSnip',
            -- 应用层和补全引擎的桥梁
            'saadparwaiz1/cmp_luasnip',
            -- 补全时的图标显示
            'onsails/lspkind-nvim',
        },
        config = function()
            require("cmp").setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                -- sources
                sources = {
                    {name = 'nvim_lsp'},
                    {name = 'path'},
                    {name = 'buffer'},
                },

            })
        end
    }
}

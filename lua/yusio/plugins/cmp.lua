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
            local cmp = require("cmp")
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
                    {name = 'cmdline'},
                },

                -- format
                formatting = {
                    format = require('lspkind').cmp_format({
                        mode = 'symbol_text',
                        maxwidth = 50,
                        ellipsis_char = "...",
                        show_labelDetails = true,
                    })
                },

                 mapping = cmp.mapping.preset.insert({
                    ["<tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), 
                    ["<S-CR>"] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
            })
        end
    }
}

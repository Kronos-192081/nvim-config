return {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end,
    },
    {
      "williamboman/mason-lspconfig.nvim",
       config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {"lua_ls", "clangd", "jdtls", "quick_lint_js", "ltex", "marksman", "rust_analyzer"}
        })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.quick_lint_js.setup({})
            lspconfig.ltex.setup({})
            lspconfig.marksman.setup({})
            lspconfig.rust_analyzer.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }

  }

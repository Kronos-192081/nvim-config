return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
    config = function ()
      require('Comment').setup()
      vim.keymap.set("n", "<C-_>", function() require('Comment.api').toggle.linewise.current() end, { noremap = true, silent = true })
    end
    
}

-------------------------------------------------------------------------------
-- Comments Plugin
-- https://github.com/numtostr/comment.nvim
-- Plugin to comment out/in code.
-------------------------------------------------------------------------------

return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- enable comment
    comment.setup({
      -- for commenting tsx, jsx, svelte, html files
      pre_hook = ts_context_commentstring.create_pre_hook(),
      toggler = {
        line  = '<Leader>/',  -- Command for line-comment.
        block = '<Nop>'       -- Command for block-comment (<Nop> = no command).
      },
    })
  end,
}

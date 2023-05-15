local status, onedark = pcall(require, 'onedark')
if (not status) then return end

require('onedark').setup {
  style = 'warmer', -- Choose one 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true,
  term_colors = true,
  ending_tildes = false,        -- Show the end-of-buffer tildes.
  cmp_itemkind_reverse = false, -- reverse item kind highlight in cmp menu

  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },

  -- Plugins Config
  diagnostics = {
    darker = true,
    undercurl = true,
    background = true,
  },
}

-- Enable theme
require('onedark').load()

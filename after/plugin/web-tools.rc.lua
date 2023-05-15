local status, webtools = pcall(require, 'web-tools')
if (not status) then return end

require 'web-tools'.setup({
  keymaps = {
    rename = nil,        -- by default use same setup of lspconfig
    repeat_rename = '.', -- to repeat
  },
  hurl = {
    -- hurl default
    show_headers = false, -- do not show http headers
    floating = false,     -- use floating windows (need guihua.lua)
    formatters = {
      -- format the result by filetype
      json = { 'jq' },
      html = { 'prettier', '--parset', 'html' },
    },
  },
})

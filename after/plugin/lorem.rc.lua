local status, lorem = pcall(require, 'lorem')
if (not status) then return end

require('lorem').setup({
  sentenceLength = "mixedShort",
  comma = 0.1
})

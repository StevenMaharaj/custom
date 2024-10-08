---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- M.disabled = {
--   n = {
--     ["gs"] = "",
--   },
-- }

-- more keybinds!
--
--
-- vim.unmap('n','gs')
vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
-- vim.keymap.set({ "n", "x", "o" }, "<F6>", "<Plug>(leap-forward-window)", { remap = true })
vim.keymap.set("i", "nn", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
vim.keymap.set("i", "mm", "<Plug>(copilot-accept-word)")
vim.keymap.set("i", "<F4>", "<Plug>(copilot-next)")
vim.keymap.set("i", "<F5>", "<Plug>(copilot-previous)")
-- vim.keymap.set("n", "<F6>", "<Plug>(copilot-d
vim.g.copilot_no_tab_map = true

vim.keymap.set("n", "<F8>1", function()
  vim.cmd "LspRestart"
end)

vim.keymap.set("n", "<F8>2", function()
  vim.cmd "LspInfo"
end)

vim.keymap.set("n", "<F8>3", function()
  vim.cmd "LspStop"
end)

vim.keymap.set("n", "<F8>4", function()
  vim.cmd "LspStart"
end)

vim.keymap.set("n", "<F6>", function()
  vim.cmd "Copilot disable"
end)

vim.keymap.set("n", "<F7>", function()
  vim.cmd "Copilot enable"
end)

return M

local M = {}
local function reload_plugin()
  -- 循环遍历已经加载的插件
  for plugin_name, _ in pairs(package.loaded) do
    if plugin_name:match("copeid") then
      -- 将插件匹配的置空
      package.loaded[plugin_name] = nil
      return
    end
  end
  -- 重新加载插件
  require("copeid").setup()
end

function M.begin()
  vim.keymap.set({ 'n' }, "<leader>pt", reload_plugin, {
    desc = "quick reload plugin",
  })
end

return M

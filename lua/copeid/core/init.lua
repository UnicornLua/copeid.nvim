local M = {}

function M.set_normal_background(color, style)
  -- api, 第一个参数是范围
  -- api, 第二个参数是高亮组
  -- api, 第三个参数表示修改的具体配置值
  vim.api.nvim_set_hl(0, "Normal", {
    bg = color,
    unpack(style),
  })
end

return M

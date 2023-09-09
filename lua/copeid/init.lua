local config = require("copeid.config")
local core = require("copeid.core")
local test = require("copeid.test")

local M = {}
-- M.info = "hello ! plugin run"
--
test.begin()
function M.setup(opts)
  -- 加载系统默认的配置，
  -- vim.pretty_print(config)
  -- 用户的配置
  -- vim.pretty_print(opts)
  -- 配置合并，之后形成的配置表
  local conf = vim.tbl_deep_extend("force", config, opts or {})
  -- vim.pretty_print(conf)
  -- 调用我们自己写的功能
  core.set_normal_background(conf.color, conf.style)
end

return M

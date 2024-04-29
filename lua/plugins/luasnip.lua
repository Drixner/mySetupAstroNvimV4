return {
  "L3MON4D3/LuaSnip",
  config = function(plugin, opts)
    require("luasnip").log.set_loglevel "info" -- IMPORTANT LINE TO ADD AT THE VERY BEGINNING
    -- include the default astronvim config that calls the setup call
    require "astronvim.plugins.configs.luasnip"(plugin, opts)
    -- load snippets paths
    require("luasnip.loaders.from_vscode").lazy_load {
      paths = { vim.fn.stdpath "config" .. "/snippets" },
    }
  end,
}

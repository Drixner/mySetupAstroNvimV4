local snippets = function()
  local ls = require "luasnip"
  local s = ls.snippet
  local t = ls.text_node
  local i = ls.insert_node

  local js_snippets = {
    s("cls", { -- 'cls' es el trigger
      t "class ", -- Texto estático 'class'
      i(1, "MyClass"), -- Primer punto de inserción, nombre de la clase
      t " {", -- Texto estático
      t { "", "\tconstructor(" }, -- Nueva línea y 'constructor(' con una tabulación
      i(2, "parameters"), -- Segundo punto de inserción, parámetros del constructor
      t { ") {", "\t\t" },
      i(3, "// initialization"), -- Tercer punto de inserción, cuerpo del constructor
      t { "", "\t}", "" },
      t "\t", -- Tabulación antes de agregar un método
      i(4, "// methods"), -- Cuarto punto de inserción para métodos
      t { "", "}" },
      i(0), -- Último punto de inserción (donde terminará el cursor)
    }),
  }
  ls.add_snippets("javascript", js_snippets)
end

return {
  {
    "L3MON4D3/LuaSnip",
    opts = function() snippets() end,
  },
}

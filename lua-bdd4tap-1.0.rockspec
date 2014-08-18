package = 'lua-bdd4tap'
version = '1.0'
source = {
   module = 'https://github.com/henry4k/lua-bdd4tap.git',
   branch = '1.0'
}
description = {
   summary = 'A BDD wrapper for lua-testmore',
   license = 'UNLICENCE',
   homepage = 'https://github.com/henry4k/lua-bdd4tap',
   maintainer = 'Henry Kielmann'
}
dependencies = {
   'lua >= 5.1',
   'lua-testmore >= 3.1'
}
build = {
    type = 'builtin',
    modules = {
        ['test.bdd']          = 'test/bdd.lua',
        ['test.bdd.describe'] = 'test/bdd/describe.lua',
    }
}

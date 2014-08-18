local ProgrammableFn = require 'Test/Utils/ProgrammableFn'
local Spy = require 'Test/Utils/Spy'


local Mock =
{
    mt = {}
}

function Mock:new()
    local programmable = ProgrammableFn:new()
    local spy = Spy:new(programmable)
    local instance = {
        programmable = programmable,
        spy = spy
    }
    return setmetatable(instance, self.mt)
end

function Mock.mt:__call( ... )
    return self.spy(...)
end

function Mock.mt:__index( key )
    return self.programmable[key] or self.spy[key]
end

return Mock
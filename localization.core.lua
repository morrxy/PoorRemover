local _, L = ...

local function defaultFunc(L, key)
    return key
end

setmetatable(L, {__index = defaultFunc})

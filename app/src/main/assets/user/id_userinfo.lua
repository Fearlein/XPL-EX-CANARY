function after(hook, param)
    local ths = param:getThis()
    if ths == nil then
        return false
    end

    local res = false

    local name = param:getSetting("account.user.name")
    if name ~= nil then
        ths.name = name
        res = true
    end

    local serial = param:getSetting("account.user.serial")
    if serial ~= nil then
        if param:isNumericString(serial) then
            ths.serialNumber = tonumber(serial)
            res = true
        end
    end

    local gId = param:getSetting("account.group.id")
    if gId ~= nil then
        if param:isNumericString(gId) then
            ths.profileGroupId = tonumber(gId)
            res = true
        end
    end

    local id = param:getSetting("account.id")
    if id ~= nil then
        if param:isNumericString(id) then
            ths. 
            res = true
        end
    end

end
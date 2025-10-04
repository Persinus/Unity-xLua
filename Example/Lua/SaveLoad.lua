SaveLoad = {}
SaveLoad.__index = SaveLoad

local saveData = {}

function SaveLoad:save(key, value)
    saveData[key] = value
    print("Saved "..key.." = "..tostring(value))
end

function SaveLoad:load(key)
    print("Loaded "..key.." = "..tostring(saveData[key]))
    return saveData[key]
end
function SaveLoad:delete(key)
    saveData[key] = nil
    print("Deleted key: "..key)
end
function SaveLoad:clearAll()
    saveData = {}
    print("Cleared all save data")
end
function SaveLoad:listKeys()
    print("Saved keys:")
    for k,_ in pairs(saveData) do
        print("- "..k)
    end
end
function SaveLoad:hasKey(key)
    local exists = saveData[key] ~= nil
    print("Key "..key.." exists: "..tostring(exists))
    return exists
end
function SaveLoad:saveTable(key, tbl)
    saveData[key] = tbl
    print("Saved table under key: "..key)
end
function SaveLoad:loadTable(key)
    local tbl = saveData[key]
    print("Loaded table from key: "..key)
    return tbl
end
function SaveLoad:exportToFile(filename)
    local file = io.open(filename, "w")
    for k,v in pairs(saveData) do
        file:write(k.."="..tostring(v).."\n")
    end
    file:close()
    print("Exported save data to "..filename)
end
function SaveLoad:importFromFile(filename)
    local file = io.open(filename, "r")
    if file then
        for line in file:lines() do
            local k,v = line:match("^(.-)=(.-)$")
            if k and v then
                saveData[k] = v
            end
        end
        file:close()
        print("Imported save data from "..filename)
    else
        print("Failed to open file: "..filename)
    end
end
function SaveLoad:getAllData()
    print("All save data:")
    for k,v in pairs(saveData) do
        print(k.." = "..tostring(v))
    end
    return saveData
end
function SaveLoad:setAutoSave(enabled)
    self.autoSave = enabled
    print("Auto-save set to "..tostring(enabled))
end
function SaveLoad:isAutoSaveEnabled()
    print("Auto-save is "..tostring(self.autoSave))
    return self.autoSave
end
function SaveLoad:autoSaveData(key, value)
    if self.autoSave then
        self:save(key, value)
        print("Auto-saved "..key.." = "..tostring(value))
    end
end
function SaveLoad:getSaveCount()
    local count = 0
    for _ in pairs(saveData) do count = count + 1 end
    print("Total saved entries: "..count)
    return count
end
function SaveLoad:renameKey(oldKey, newKey)
    if saveData[oldKey] then
        saveData[newKey] = saveData[oldKey]
        saveData[oldKey] = nil
        print("Renamed key from "..oldKey.." to "..newKey)
    else
        print("Key "..oldKey.." does not exist")
    end
end
function SaveLoad:copyKey(sourceKey, destKey)
    if saveData[sourceKey] then
        saveData[destKey] = saveData[sourceKey]
        print("Copied key from "..sourceKey.." to "..destKey)
    else
        print("Key "..sourceKey.." does not exist")
    end
end
function SaveLoad:mergeData(otherData)
    for k,v in pairs(otherData) do
        saveData[k] = v
    end
    print("Merged external data into save data")
end
function SaveLoad:printData()
    print("Current save data:")
    for k,v in pairs(saveData) do
        print(k.." = "..tostring(v))
    end
end
function SaveLoad:getDataSize()
    local size = 0
    for _ in pairs(saveData) do size = size + 1 end
    print("Save data size: "..size)
    return size
end
function SaveLoad:backupData()
    local backup = {}
    for k,v in pairs(saveData) do
        backup[k] = v
    end
    print("Created backup of save data")
    return backup
end
function SaveLoad:restoreBackup(backup)
    saveData = backup
    print("Restored save data from backup")
end
function SaveLoad:validateData(key, validatorFunc)
    if saveData[key] then
        local isValid = validatorFunc(saveData[key])
        print("Data for key "..key.." is valid: "..tostring(isValid))
        return isValid
    else
        print("Key "..key.." does not exist")
        return false
    end
end
function SaveLoad:getKeysByPrefix(prefix)
    local keys = {}
    for k,_ in pairs(saveData) do
        if k:sub(1, #prefix) == prefix then
            table.insert(keys, k)
        end
    end
    print("Keys with prefix '"..prefix.."':")
    for _,k in ipairs(keys) do
        print("- "..k)
    end
    return keys
end
function SaveLoad:setDefault(key, defaultValue)
    if saveData[key] == nil then
        saveData[key] = defaultValue
        print("Set default for key "..key.." = "..tostring(defaultValue))
    else
        print("Key "..key.." already has a value: "..tostring(saveData[key]))
    end
end
function SaveLoad:incrementValue(key, amount)
    if type(saveData[key]) == "number" then
        saveData[key] = saveData[key] + amount
        print("Incremented key "..key.." by "..amount..", new value: "..saveData[key])
    else
        print("Key "..key.." is not a number or does not exist")
    end
end
function SaveLoad:decrementValue(key, amount)
    if type(saveData[key]) == "number" then
        saveData[key] = saveData[key] - amount
        print("Decremented key "..key.." by "..amount..", new value: "..saveData[key])
    else
        print("Key "..key.." is not a number or does not exist")
    end
end
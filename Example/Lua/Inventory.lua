Inventory = {}
Inventory.__index = Inventory

function Inventory:new()
    local obj = {items={}}
    setmetatable(obj, Inventory)
    return obj
end

function Inventory:addItem(item)
    table.insert(self.items, item)
    print("Added item: "..item)
end

function Inventory:removeItem(item)
    for i,v in ipairs(self.items) do
        if v == item then
            table.remove(self.items,i)
            print("Removed item: "..item)
            return
        end
    end
    print("Item not found: "..item)
end

function Inventory:listItems()
    print("Inventory:")
    for _,v in ipairs(self.items) do
        print("- "..v)
    end
end

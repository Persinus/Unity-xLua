Character = {}
Character.__index = Character

function Character:new(name, hp, atk)
    local obj = {name=name, hp=hp, atk=atk, isAlive=true}
    setmetatable(obj, Character)
    return obj
end

function Character:takeDamage(dmg)
    if not self.isAlive then return end
    self.hp = self.hp - dmg
    print(self.name.." takes "..dmg.." damage, HP: "..self.hp)
    if self.hp <= 0 then
        self.isAlive = false
        print(self.name.." died.")
    end
end

function Character:attack(target)
    if self.isAlive then
        print(self.name.." attacks "..target.name.." for "..self.atk.." damage")
        target:takeDamage(self.atk)
    end
end
function Character:heal(amount)
    if self.isAlive then
        self.hp = self.hp + amount
        print(self.name.." heals for "..amount.." HP, total HP: "..self.hp)
    end
end
function Character:isAlive()
    return self.isAlive
end
function Character:getStatus()
    return {name=self.name, hp=self.hp, atk=self.atk, isAlive=self.isAlive}
end
function Character:setPosition(x, y)
    self.x = x
    self.y = y
    print(self.name.." moved to position ("..x..","..y..")")
end
function Character:getPosition()
    return {x=self.x, y=self.y}
end
function Character:levelUp()
    self.atk = self.atk + 5
    self.hp = self.hp + 20
    print(self.name.." leveled up! New stats - HP: "..self.hp..", ATK: "..self.atk)
end
function Character:useItem(item)
    print(self.name.." uses item: "..item)
end
function Character:speak(message)
    print(self.name.." says: "..message)
end
function Character:emote(emotion)
    print(self.name.." shows emotion: "..emotion)
end
function Character:interact(object)
    print(self.name.." interacts with "..object)
end
function Character:castSpell(spell, target)
    print(self.name.." casts "..spell.." on "..target.name)
end
function Character:rest()
    if self.isAlive then
        self.hp = self.hp + 10
        print(self.name.." rests and recovers 10 HP, total HP: "..self.hp)
    end
end
function Character:saveState()
    local state = {name=self.name, hp=self.hp, atk=self.atk, isAlive=self.isAlive, x=self.x, y=self.y}
    print("Saving state for "..self.name)
    return state
end

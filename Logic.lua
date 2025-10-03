-- Character definition
Character = {}
Character.__index = Character

-- Constructor
function Character:new(name, hp, mana, attack, defense, level)
    local obj = {
        name = name or "Hero",
        HP = hp or 100,
        Mana = mana or 50,
        Attack = attack or 10,
        Defense = defense or 5,
        Level = level or 1
    }
    setmetatable(obj, self)
    return obj
end

-- Method: Take damage (HP reduced after defense)
function Character:TakeDamage(amount)
    local damage = math.max(0, amount - self.Defense)
    self.HP = math.max(0, self.HP - damage)
    return damage
end

-- Method: Use Mana
function Character:UseMana(cost)
    if self.Mana >= cost then
        self.Mana = self.Mana - cost
        return true
    else
        return false
    end
end

-- Method: Attack another character
function Character:AttackTarget(target)
    local damage = target:TakeDamage(self.Attack)
    return damage
end

-- Method: Level up
function Character:LevelUp()
    self.Level = self.Level + 1
    self.HP = self.HP + 10
    self.Mana = self.Mana + 5
    self.Attack = self.Attack + 2
    self.Defense = self.Defense + 1
end

-- Example usage
local hero = Character:new("Hero", 120, 60, 15, 8, 1)
local monster = Character:new("Monster", 80, 30, 12, 3, 1)

print("Hero attacks Monster for " .. hero:AttackTarget(monster) .. " damage")
print("Monster HP: " .. monster.HP)

hero:LevelUp()
print("Hero is now level " .. hero.Level .. ", HP: " .. hero.HP)

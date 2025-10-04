Skill = {}
Skill.__index = Skill

function Skill:new(name, dmg, cooldown)
    local obj = {name=name, dmg=dmg, cooldown=cooldown, lastUsed=0}
    setmetatable(obj, Skill)
    return obj
end

function Skill:use(caster, target, time)
    if time - self.lastUsed >= self.cooldown then
        print(caster.name.." uses "..self.name.." on "..target.name.." for "..self.dmg.." damage")
        target:takeDamage(self.dmg)
        self.lastUsed = time
    else
        print(self.name.." is on cooldown")
    end
end
function Skill:isOnCooldown(time)
    return (time - self.lastUsed) < self.cooldown
end
function Skill:getCooldownRemaining(time)
    local remaining = self.cooldown - (time - self.lastUsed)
    return remaining > 0 and remaining or 0
end
function Skill:setCooldown(cooldown)
    self.cooldown = cooldown
    print("Cooldown for "..self.name.." set to "..cooldown.." seconds")
end
function Skill:getInfo()
    return {name=self.name, dmg=self.dmg, cooldown=self.cooldown, lastUsed=self.lastUsed}
end
function Skill:upgrade(dmgIncrease, cooldownDecrease)
    self.dmg = self.dmg + dmgIncrease
    self.cooldown = math.max(0, self.cooldown - cooldownDecrease)
    print(self.name.." upgraded! New stats - Damage: "..self.dmg..", Cooldown: "..self.cooldown)
end
function Skill:resetCooldown()
    self.lastUsed = 0
    print("Cooldown for "..self.name.." has been reset")
end
function Skill:setDamage(dmg)
    self.dmg = dmg
    print("Damage for "..self.name.." set to "..dmg)
end
function Skill:setName(name)
    self.name = name
    print("Skill name set to "..name)
end
function Skill:describe()
    print("Skill: "..self.name..", Damage: "..self.dmg..", Cooldown: "..self.cooldown.." seconds")
end
function Skill:isUsable(time)
    return (time - self.lastUsed) >= self.cooldown
end
function Skill:getLastUsed()
    return self.lastUsed
end
function Skill:setLastUsed(time)
    self.lastUsed = time
    print("Last used time for "..self.name.." set to "..time)
end
function Skill:clone()
    local newSkill = Skill:new(self.name, self.dmg, self.cooldown)
    newSkill.lastUsed = self.lastUsed
    return newSkill
end
function Skill:toString()
    return "Skill("..self.name..", Damage: "..self.dmg..", Cooldown: "..self.cooldown..")"
end

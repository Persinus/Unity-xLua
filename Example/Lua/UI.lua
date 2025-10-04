UI = {}

function UI:showMessage(msg)
    print("[UI] "..msg)
end

function UI:showHealth(character)
    print("[UI] "..character.name.." HP: "..character.hp)
end
function UI:showInventory(inventory)
    print("[UI] Inventory:")
    for _,item in ipairs(inventory.items) do
        print(" - "..item)
    end
end
function UI:showSkill(skill)
    print("[UI] Skill: "..skill.name.." Damage: "..skill.dmg.." Cooldown: "..skill.cooldown)
end
function UI:showQuest(quest)
    local status = quest.completed and "Completed" or "In Progress"
    print("[UI] Quest: "..quest.name.." Objective: "..quest.objective.." Status: "..status)
end
function UI:showAnimation(character, animName)
    print("[UI] Playing animation '"..animName.."' for "..character.name)
end
function UI:updateHealthBar(character)
    print("[UI] Updating health bar for "..character.name.." to "..character.hp.." HP")
end
function UI:updateManaBar(character, mana)
    print("[UI] Updating mana bar for "..character.name.." to "..mana.." Mana")
end
function UI:updateExperienceBar(character, exp)
    print("[UI] Updating experience bar for "..character.name.." to "..exp.." EXP")
end
function UI:showLevelUp(character)
    print("[UI] "..character.name.." leveled up! New stats - HP: "..character.hp..", ATK: "..character.atk)
end
function UI:showDamage(character, dmg)
    print("[UI] "..character.name.." takes "..dmg.." damage!")
end
function UI:showHealing(character, amount)
    print("[UI] "..character.name.." heals for "..amount.." HP!")
end
function UI:showDeath(character)
    print("[UI] "..character.name.." has died.")
end

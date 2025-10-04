Effects = {}
Effects.__index = Effects

function Effects:spawnEffect(effectName, position)
    print("Spawn effect '"..effectName.."' at "..position)
end
function Effects:playSound(soundName)
    print("Play sound: "..soundName)
end
function Effects:stopSound(soundName)
    print("Stop sound: "..soundName)
end
function Effects:applyBuff(character, buffName, duration)
    print("Apply buff '"..buffName.."' to "..character.name.." for "..duration.." seconds")
end
function Effects:removeBuff(character, buffName)
    print("Remove buff '"..buffName.."' from "..character.name)
end
function Effects:applyDebuff(character, debuffName, duration)
    print("Apply debuff '"..debuffName.."' to "..character.name.." for "..duration.." seconds")
end
function Effects:removeDebuff(character, debuffName)
    print("Remove debuff '"..debuffName.."' from "..character.name)
end
function Effects:triggerEvent(eventName, params)
    print("Trigger event '"..eventName.."' with params: "..params)
end
function Effects:setEnvironmentEffect(effectName, intensity)
    print("Set environment effect '"..effectName.."' with intensity "..intensity)
end
function Effects:clearEnvironmentEffect(effectName)
    print("Clear environment effect '"..effectName.."'")
end
function Effects:fadeIn(effectName, duration)
    print("Fade in effect '"..effectName.."' over "..duration.." seconds")
end
function Effects:fadeOut(effectName, duration)
    print("Fade out effect '"..effectName.."' over "..duration.." seconds")
end
function Effects:setVolume(soundName, volume)
    print("Set volume of sound '"..soundName.."' to "..volume)
end
function Effects:getActiveEffects()
    print("Get list of active effects")
    return {"Fire", "Ice", "Wind"}
end
function Effects:isEffectActive(effectName)
    print("Check if effect '"..effectName.."' is active")
    return false
end
function Effects:clearAllEffects()
    print("Clear all active effects")
end

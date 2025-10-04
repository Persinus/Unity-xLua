Animation = {}
Animation.__index = Animation

function Animation:play(character, animName)
    print("Play animation '"..animName.."' for "..character.name)
end
function Animation:stop(character, animName)
    print("Stop animation '"..animName.."' for "..character.name)
end
function Animation:loop(character, animName)
    print("Loop animation '"..animName.."' for "..character.name)
end
function Animation:fade(character, animName, duration)
    print("Fade animation '"..animName.."' for "..character.name.." over "..duration.." seconds")
end
function Animation:blend(character, animName1, animName2, weight)
    print("Blend animation '"..animName1.."' and '"..animName2.."' for "..character.name.." with weight "..weight)
end
function Animation:setSpeed(character, animName, speed)
    print("Set animation '"..animName.."' speed to "..speed.." for "..character.name)
end
function Animation:reset(character, animName)
    print("Reset animation '"..animName.."' for "..character.name)
end
function Animation:isPlaying(character, animName)
    print("Check if animation '"..animName.."' is playing for "..character.name)
    return false
end
function Animation:getCurrentFrame(character, animName)
    print("Get current frame of animation '"..animName.."' for "..character.name)
    return 0
end
function Animation:setFrame(character, animName, frame)
    print("Set animation '"..animName.."' to frame "..frame.." for "..character.name)
end
function Animation:pause(character, animName)
    print("Pause animation '"..animName.."' for "..character.name)
end
function Animation:resume(character, animName)
    print("Resume animation '"..animName.."' for "..character.name)
end
function Animation:setLooping(character, animName, looping)
    print("Set animation '"..animName.."' looping to "..tostring(looping).." for "..character.name)
end
function Animation:setBlendMode(character, animName, mode)
    print("Set animation '"..animName.."' blend mode to "..mode.." for "..character.name)
end
function Animation:setTransition(character, fromAnim, toAnim, duration)
    print("Set transition from animation '"..fromAnim.."' to '"..toAnim.."' over "..duration.." seconds for "..character.name)
end
function Animation:getAnimationList(character)
    print("Get animation list for "..character.name)
    return {"Idle", "Walk", "Run", "Attack", "Die"}
end

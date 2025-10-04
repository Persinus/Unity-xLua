Audio = {}
Audio.__index = Audio

function Audio:playSFX(name)
    print("Play SFX: "..name)
end

function Audio:playMusic(name)
    print("Play Music: "..name)
end
function Audio:stopMusic()
    print("Stop Music")
end
function Audio:setVolume(volume)
    print("Set Volume to "..volume)
end
function Audio:fadeIn(name, duration)
    print("Fade in "..name.." over "..duration.." seconds")
end
function Audio:fadeOut(name, duration)
    print("Fade out "..name.." over "..duration.." seconds")
end
function Audio:pause()
    print("Pause Audio")
end
function Audio:resume()
    print("Resume Audio")
end
function Audio:isPlaying(name)
    print("Is "..name.." playing?")
    return false
end
function Audio:getVolume()
    print("Get current volume")
    return 1.0
end
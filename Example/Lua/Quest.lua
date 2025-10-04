Quest = {}
Quest.__index = Quest

function Quest:new(name, objective)
    local obj = {name=name, objective=objective, completed=false}
    setmetatable(obj, Quest)
    return obj
end

function Quest:complete()
    self.completed = true
    print("Quest completed: "..self.name)
end
function Quest:isCompleted()
    return self.completed
end
function Quest:getObjective()
    return self.objective
end
function Quest:setObjective(newObjective)
    self.objective = newObjective
    print("Quest objective updated: "..self.objective)
end
function Quest:reset()
    self.completed = false
    print("Quest reset: "..self.name)
end
function Quest:reward(player)
    print("Player "..player.name.." received reward for completing quest: "..self.name)
end
function Quest:track()
    print("Tracking quest: "..self.name.." - Objective: "..self.objective)
end
function Quest:abandon()
    print("Quest abandoned: "..self.name)
end
function Quest:getStatus()
    return {name=self.name, objective=self.objective, completed=self.completed}
end
function Quest:setName(newName)
    self.name = newName
    print("Quest name updated to: "..self.name)
end
function Quest:onProgress(progress)
    print("Quest '"..self.name.."' progress: "..progress.."%")
end

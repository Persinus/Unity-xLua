require("Character")
require("Inventory")
require("Skill")
require("UI")
require("Quest")
require("Animation")
require("Effects")
require("Audio")
require("SaveLoad")
require("NetworkDemo")

-- Create characters
local hero = Character:new("Hero", 100, 15)
local monster = Character:new("Monster", 80, 10)

-- Inventory demo
local bag = Inventory:new()
bag:addItem("Potion")
bag:addItem("Sword")
bag:listItems()

-- Skills demo
local fireball = Skill:new("Fireball", 25, 3)
fireball:use(hero, monster, 0)
fireball:use(hero, monster, 1) -- cooldown demo

-- UI demo
UI:showMessage("Battle Start!")
UI:showHealth(hero)
UI:showHealth(monster)

-- Quest demo
local quest = Quest:new("Find the treasure", "Collect 3 gems")
quest:complete()

-- Animation & Effects demo
Animation:play(hero, "Attack")
Effects:spawnEffect("Explosion", "X=5,Y=2,Z=0")

-- Audio demo
Audio:playSFX("Hit")
Audio:playMusic("BattleTheme")

-- Save/Load demo
SaveLoad:save("HeroHP", hero.hp)
SaveLoad:load("HeroHP")

-- Network demo
NetworkDemo:sendRPC("Attack", "Player2")
NetworkDemo:receiveRPC("CounterAttack", "Player2")

-- Combat demo
hero:attack(monster)
monster:attack(hero)
UI:showHealth(hero)
UI:showHealth(monster)

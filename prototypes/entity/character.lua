local char = data.raw["character"]["character"]
local biter = data.raw["unit"]["small-biter"]

-- biter animations have 16 directions
--[[char.animations[1] = {
	running = biter.run_animation, -- 8 directions
	idle = biter.run_animation, -- 8 directions
	idle_with_gun = biter.run_animation, -- 8 directions
	running_with_gun = biter.run_animation, -- 18 directions
	flipped_shadow_running_with_gun = biter.run_animation, -- 18 directions
	mining_with_tool = biter.attack_parameters.animation, -- 8 directions
}]]

local anim = char.animations[1]

anim.running = biter.run_animation
anim.idle = biter.run_animation
anim.mining_with_tool = biter.attack_parameters.animation

char.animations[1] = anim

data.raw["character"]["character"] = char

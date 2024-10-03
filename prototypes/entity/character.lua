require("prototypes.entity.og.biter-animations")

local char = data.raw["character"]["character"]
local biter = data.raw["unit"]["small-biter"]

small_biter_scale = 0.5
small_biter_tint1 = { r = 0.60, g = 0.58, b = 0.51, a = 1 }
small_biter_tint2 = { r = 0.9, g = 0.83, b = 0.54, a = 1 }

medium_biter_scale = 0.7
medium_biter_tint1 = { r = 0.49, g = 0.46, b = 0.51, a = 1 }
medium_biter_tint2 = { r = 0.93, g = 0.72, b = 0.72, a = 1 }

big_biter_scale = 1.0
big_biter_tint1 = { r = 0.37, g = 0.40, b = 0.72, a = 1 }
big_biter_tint2 = { r = 0.55, g = 0.76, b = 0.75, a = 1 }

behemoth_biter_scale = 1.2
behemoth_biter_tint1 = { r = 0.21, g = 0.19, b = 0.25, a = 1 }
behemoth_biter_tint2 = { r = 0.657, g = 0.95, b = 0.432, a = 1.000 }

-- biter animations have 16 directions
--[[char.animations[1] = {
	running = biter.run_animation, -- 8 directions
	idle = biter.run_animation, -- 8 directions
	idle_with_gun = biter.run_animation, -- 8 directions
	running_with_gun = biter.run_animation, -- 18 directions
	flipped_shadow_running_with_gun = biter.run_animation, -- 18 directions
	mining_with_tool = biter.attack_parameters.animation, -- 8 directions
}]]

-- all animations require 8 directions, except for running with gun for some odd reason
local animations = {
	{
		idle = biteridleanimation(small_biter_scale, small_biter_tint1, small_biter_tint2),
		idle_with_gun = biteridleanimation(small_biter_scale, small_biter_tint1, small_biter_tint2),
		running = biterrunanimation(small_biter_scale, small_biter_tint1, small_biter_tint2), -- TODO: decrease speed
		mining_with_tool = biterattackanimation(small_biter_scale, small_biter_tint1, small_biter_tint2),
		running_with_gun = char.animations[1].running_with_gun, -- this requires 18 directions, while biter has 16. TODO: make a spritesheet for 18 directions
		flipped_shadow_running_with_gun = char.animations[1].flipped_shadow_running_with_gun,
	},
	{
		armors = { "heavy-armor" },
		idle = biteridleanimation(medium_biter_scale, medium_biter_tint1, medium_biter_tint2),
		idle_with_gun = biteridleanimation(medium_biter_scale, medium_biter_tint1, medium_biter_tint2),
		running = biterrunanimation(medium_biter_scale, medium_biter_tint1, medium_biter_tint2),
		mining_with_tool = biterattackanimation(medium_biter_scale, medium_biter_tint1, medium_biter_tint2),
		running_with_gun = char.animations[1].running_with_gun,
		flipped_shadow_running_with_gun = char.animations[1].flipped_shadow_running_with_gun,
	},
	{
		armors = { "modular-armor", "power-armor" },
		idle = biteridleanimation(big_biter_scale, big_biter_tint1, big_biter_tint2),
		idle_with_gun = biteridleanimation(big_biter_scale, big_biter_tint1, big_biter_tint2),
		running = biterrunanimation(big_biter_scale, big_biter_tint1, big_biter_tint2),
		mining_with_tool = biterattackanimation(big_biter_scale, big_biter_tint1, big_biter_tint2),
		running_with_gun = char.animations[1].running_with_gun,
		flipped_shadow_running_with_gun = char.animations[1].flipped_shadow_running_with_gun,
	},
	{
		armors = { "power-armor-mk2" },
		idle = biteridleanimation(behemoth_biter_scale, behemoth_biter_tint1, behemoth_biter_tint2),
		idle_with_gun = biteridleanimation(behemoth_biter_scale, behemoth_biter_tint1, behemoth_biter_tint2),
		running = biterrunanimation(behemoth_biter_scale, behemoth_biter_tint1, behemoth_biter_tint2),
		mining_with_tool = biterattackanimation(behemoth_biter_scale, behemoth_biter_tint1, behemoth_biter_tint2),
		running_with_gun = char.animations[1].running_with_gun,
		flipped_shadow_running_with_gun = char.animations[1].flipped_shadow_running_with_gun,
	},
}

char.animations = animations

data.raw["character"]["character"] = char

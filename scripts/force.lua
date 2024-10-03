-- built in forces:
-- player (enemy player)
-- enemy (your force)
-- neutral

-- forces in this mod:
-- player_biter (you)
-- enemy_player (player bot)
-- neutral_biter (neutral nests)
-- enemy_biter (other nests)

local DEFAULT_PLAYER_FORCE = "enemy" -- player_biter

local function on_init(event)
	game.create_force("player_biter")
	game.create_force("enemy_player")
	--game.create_force("neutral_biter")
	--game.create_force("enemy_biter")
	for _, player in pairs(game.players) do
		player.force = game.forces[DEFAULT_PLAYER_FORCE]
	end
end

local function on_player_created(event)
	local player = game.players[event.player_index]
	if player then
		player.force = game.forces[DEFAULT_PLAYER_FORCE]
	end
end

local Force = {}

Force.events = {
	[defines.events.on_player_created] = on_player_created,
}

Force.on_init = on_init
Force.on_load = on_load

return Force

local function on_init(event)
	global.player_selected_units = {}
end

local UnitSelection = {}

UnitSelection.on_init = on_init

return UnitSelection

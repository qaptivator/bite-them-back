local SELECTION_ITEM = "btb-unit-selection"
local SELECTION_INPUT = "btb-unit-selection-input"
local SELECTION_SHORTCUT = "btb-unit-selection-shortcut"

local function handle_select_tool(event)
	local player = game.get_player(event.player_index)
	if not player then
		return
	end
	--local name = event.prototype_name or event.input_name
	if event.input_name == SELECTION_INPUT or event.prototype_name == SELECTION_SHORTCUT then
		if player.clear_cursor() then
			player.cursor_stack.set_stack({ name = SELECTION_ITEM, count = 1 })
		end
	end
end

-- select units
local function on_player_selected_area(event)
	if event.item == SELECTION_ITEM then
		for _, entity in pairs(event.entities) do
			game.print("entity selected")
		end
	end
end

-- deselect units
local function on_player_reverse_selected_area(event)
	if event.item == SELECTION_ITEM then
		for _, entity in pairs(event.entities) do
			game.print("entity deselected")
		end
	end
end

local SelectionTool = {}

SelectionTool.events = {
	[SELECTION_INPUT] = handle_select_tool,
	[defines.events.on_lua_shortcut] = handle_select_tool,
	[defines.events.on_player_selected_area] = on_player_selected_area,
	[defines.events.on_player_reverse_selected_area] = on_player_reverse_selected_area,
}

return SelectionTool

data:extend({
	{
		type = "selection-tool",
		name = "btb-unit-selection",
		subgroup = "tool",

		-- select
		selection_mode = {
			"same-force",
			"entity-with-health",
		},
		selection_color = {
			r = 255,
			g = 255,
			b = 0,
		},
		entity_type_filters = { "unit" },
		entity_filter_mode = "whitelist",
		selection_cursor_box_type = "entity",

		icon = "__core__/graphics/force-editor-icon.png",
		icon_size = 64,

		-- select alt
		alt_selection_mode = {
			"same-force",
			"entity-with-health",
		},
		alt_selection_color = {
			r = 255,
			g = 255,
			b = 0,
		},
		alt_entity_type_filters = { "unit" },
		alt_entity_filter_mode = "whitelist",
		alt_selection_cursor_box_type = "entity",

		-- deselect
		reverse_selection_mode = {
			"same-force",
			"entity-with-health",
		},
		reverse_selection_color = {
			r = 255,
			g = 0,
			b = 0,
		},
		reverse_entity_type_filters = { "unit" },
		reverse_entity_filter_mode = "whitelist",
		reverse_selection_cursor_box_type = "not-allowed",

		-- deselect alt
		alt_reverse_selection_mode = { "nothing" },
		alt_reverse_selection_color = { a = 0 },

		stack_size = 1,
		flags = { "hidden", "only-in-cursor", "spawnable", "not-stackable" },
		--draw_label_for_cursor_render = true,
	},
})

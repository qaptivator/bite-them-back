function hide_recipe(recipe)
	recipe.hidden = true
	recipe.hide_from_stats = true
	recipe.hide_from_player_crafting = true
	recipe.enabled = false
end

local recipes = data.raw["recipe"]
if recipes then
	for index, recipe in pairs(recipes) do
		hide_recipe(recipe)
		if recipe.normal then
			hide_recipe(recipe.normal)
		end
		if recipe.expensive then
			hide_recipe(recipe.expensive)
		end
	end
end

--data:extend({})

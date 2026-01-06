if mods["Automatic_Train_Painter"] and settings.startup["cybersyn-tweaks-atm-rm-manual-color-module"].value then
  data.raw["generator-equipment"]["manual-color-module"] = nil
  data.raw.item["manual-color-module"] = nil
  data.raw.recipe["manual-color-module"] = nil

  -- replace crafting recipe with dummy recipe :p
  data:extend({
    {
      type = "recipe",
      name = "manual-color-module",
      ingredients = {},
      results = {},
      hidden_in_factoriopedia = true,
      hide_from_player_crafting = true,
      hide_from_signal_gui = true,
      enabled = false,
      icon = "__Automatic_Train_Painter__/graphics/icons/manual-color-module.png",
    },
  })

  for i = 1, #data.raw.technology["automated-rail-transportation"].effects do
    if data.raw.technology["automated-rail-transportation"].effects[i].recipe == "manual-color-module" then
      table.remove(data.raw.technology["automated-rail-transportation"].effects, i)
      break
    end
  end
end

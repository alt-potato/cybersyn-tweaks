-- turn manual color module recipe back off >:(
for _, force in pairs(game.forces) do
    local recipes = force.recipes
    recipes["manual-color-module"].enabled = false
end

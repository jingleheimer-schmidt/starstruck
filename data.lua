
local mod_list = {
    "uwube",
    "DiscoThrusters",
    "rainbow-menu-logos",
    "preserve-products-produced",
    "RainbowLasers",
    "NicerFuelGlow-Fixed",
    "heat_glow",
    "DiscoScience",
    "Milestones",
    "better-victory-screen",
    "brake-squeal",
    "automatic-underground-pipe-connectors",
    "FilterHelper",
    "inserter-throughput",
    "Dirt_Path",
    "MiningScars",
    "rp_item_anarchy",
    "pickitup",
    "trainsaver",
    "glowing_trees",
    "dim_lamps",
    "cutscene-creator",
    "leave_the_lights_on",
    "visible-planets",
    "pump",
    "mining-patch-planner",
    "smart-deconstruction-planner",
    -- "RateCalculator",
    "vp-scale",
    "bullet-trails",
    "logistic-helper",
    "train-trails",
    "Automatic_Train_Painter",
    "automatic-station-painter",
    "color_whole_train",
    "FluidWagonColorMask",
    "RainbowCollector"
}

for _, simulation in pairs(data.raw["utility-constants"]["default"].main_menu_simulations) do
    simulation.mods = simulation.mods or {}
    for _, mod_name in pairs(mod_list) do
        table.insert(simulation.mods, mod_name)
    end
end

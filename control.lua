
---@param event CustomCommandData
local function toggle_train_color_mode(event)
    local parameter = event.parameter
    local count = 0
    if parameter and (parameter == "true" or parameter == "false") then
        local trains = game.train_manager.get_trains {}
        for _, train in pairs(trains) do
            for _, carriage in pairs(train.carriages) do
                carriage.copy_color_from_train_stop = (parameter == "true")
            end
            count = count + 1
        end
        game.print("Set \"Use destination train stop color\" to " .. parameter .. " for " .. count .. " trains.")
    else
        local trains = game.train_manager.get_trains {}
        for _, train in pairs(trains) do
            for _, carriage in pairs(train.carriages) do
                carriage.copy_color_from_train_stop = not carriage.copy_color_from_train_stop
            end
            count = count + 1
        end
        game.print("Toggled \"Use destination train stop color\" for " .. count .. " trains.")
    end
end

local function add_commands()
    commands.add_command(
        "toggle-train-color-mode",
        "Toggles the \"Use destination train stop color\" setting for all trains. Optionally takes a parameter of \"true\" or \"false\" to set the mode explicitly.",
        toggle_train_color_mode
    )
end

script.on_init(add_commands)
script.on_load(add_commands)

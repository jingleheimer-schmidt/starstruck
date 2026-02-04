
---@type data.ModBoolSettingPrototype
local hide_factorio_logo = {
    type = "bool-setting",
    name = "starstruck-hide-factorio-logo",
    setting_type = "startup",
    default_value = true,
    order = "a"
}
data:extend({ hide_factorio_logo })

---@type data.ModBoolSettingPrototype
local hide_manual_color_module = {
    type = "bool-setting",
    name = "starstruck-hide-manual-color-module",
    setting_type = "startup",
    default_value = true,
    order = "b"
}
data:extend({ hide_manual_color_module })

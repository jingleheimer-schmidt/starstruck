
if settings.startup["starstruck-hide-factorio-logo"].value then
    if data.raw["technology"]["factorio-logo"] then
        data.raw["technology"]["factorio-logo"].enabled = false
        data.raw["technology"]["factorio-logo"].hidden = true
    end
end

if settings.startup["starstruck-hide-manual-color-module"].value then
    if data.raw["recipe"]["manual-color-module"] then
        data.raw["recipe"]["manual-color-module"].hidden = true
    end
    if data.raw["technology"]["automated-rail-transportation"] then
        local tech = data.raw["technology"]["automated-rail-transportation"]
        if tech.effects then
            for _, effect in pairs(tech.effects) do
                if effect.recipe and effect.recipe == "manual-color-module" then
                    effect.hidden = true
                end
            end
        end
    end
end


if settings.startup["starstruck-hide-factorio-logo"].value then
    if data.raw["technology"]["factorio-logo"] then
        data.raw["technology"]["factorio-logo"].enabled = false
        data.raw["technology"]["factorio-logo"].hidden = true
    end
end

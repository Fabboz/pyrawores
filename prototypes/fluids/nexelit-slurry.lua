FLUID {
    type = "fluid",
    name = "nexelit-slurry",
    icon = "__pyrawores__/graphics/icons/nexelit-slurry.png",
	icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0, g = 0.545, b = 0.733},
    flow_color = {r = 0, g = 0.545, b = 0.733},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}

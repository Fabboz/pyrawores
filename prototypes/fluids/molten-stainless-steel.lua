FLUID {
    type = "fluid",
    name = "molten-stainless-steel",
    icon = "__pyrawores__/graphics/icons/molten-stainless-steel.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.5, g = 0.5, b = 0.6},
    flow_color = {r = 0.5, g = 0.5, b = 0.6},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}

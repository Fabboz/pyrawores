RECIPE {
    type = "recipe",
    name = "u-pulp-03",
    category = "leaching",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-pulp-02", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "u-pulp-03", amount = 100},
    },
    main_product = "u-pulp-03",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("uranium-mk02")


FLUID {
    type = "fluid",
    name = "u-pulp-03",
    icon = "__pyrawores__/graphics/icons/u-pulp-03.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 0.180, g = 0.756, b = 0.196},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}

RECIPE {
    type = "recipe",
    name = "ti-pulp-02",
    category = "chemistry", --pyfe grease table
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "ti-pulp-01", amount = 100},
        {type = "fluid", name = "heavy-oil", amount = 100}, --pyfe grease
    },
    results = {
        {type = "fluid", name = "ti-pulp-02", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 50},
        {type = "item", name = "ti-residue", amount = 1},
    },
    main_product = "ti-pulp-02",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk03"):change_category('grease'):replace_ingredient("heavy-oil", "grease")


FLUID {
    type = "fluid",
    name = "ti-pulp-02",
    icon = "__pyrawores__/graphics/icons/ti-pulp-02.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.713, g = 0.643, b = 0.733},
    flow_color = {r = 0.713, g = 0.643, b = 0.733},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}

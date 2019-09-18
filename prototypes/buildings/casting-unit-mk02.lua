RECIPE {
    type = "recipe",
    name = "casting-unit-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"casting-unit-mk01", 1},
        {"duralumin", 15},
        {"lead-plate", 10},
        {"nexelit-plate", 15},
        {"advanced-circuit", 10},
    },
    results = {
        {"casting-unit-mk02", 1}
    }
}:add_unlock("machines-mk02")

ITEM {
    type = "item",
    name = "casting-unit-mk02",
    icon = "__pyrawores__/graphics/icons/casting-unit-mk02.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk02",
    order = "b",
    place_result = "casting-unit-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "casting-unit-mk02",
    icon = "__pyrawores__/graphics/icons/casting-unit-mk02.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "casting-unit-mk02"},
    fast_replaceable_group = "casting-unit-mk01",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"casting"},
    crafting_speed = 1.0,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 8.00,
    },
    energy_usage = "450kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/casting-unit-mk01/off-mk02.png",
                --priority = "high",
                width = 238,
                height = 234,
                --line_length = 1,
                frame_count = 1,
                --animation_speed = 2,
                shift = util.by_pixel(7, -5)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(6.5, -5),
            west_position = util.by_pixel(6.5, -5),
            south_position = util.by_pixel(6.5, -5),
            east_position = util.by_pixel(6.5, -5),
            animation = {
                filename = "__pyrawores__/graphics/entity/casting-unit-mk01/on-mk02.png",
                priority = "high",
                frame_count = 30,
                line_length = 6,
                width = 237,
                height = 234,
                animation_speed = 0.5
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.0, 0.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/casting-unit.ogg", volume = 0.8},
        idle_sound = {filename = "__pyrawores__/sounds/casting-unit.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}

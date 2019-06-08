RECIPE {
    type = "recipe",
    name = "flotation-cell-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"steam-engine", 4},
        {"steel-plate", 10},
        {"lab", 1},
        {"electronic-circuit", 3},
    },
    results = {
        {"flotation-cell-mk01", 1}
    }
}:add_unlock("machines-mk01")

ITEM {
    type = "item",
    name = "flotation-cell-mk01",
    icon = "__pyrawores__/graphics/icons/flotation-cell-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk01",
    order = "e",
    place_result = "flotation-cell-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "flotation-cell-mk01",
    icon = "__pyrawores__/graphics/icons/flotation-cell-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "flotation-cell-mk01"},
    fast_replaceable_group = "flotation-cell-mk01",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"flotation"},
    crafting_speed = 0.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "400kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/flotation-cell-mk01/off-mk01.png",
                --priority = "high",
                width = 192,
                height = 229,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(-1, -19)
            },
            {
                filename = "__pyrawores__/graphics/entity/flotation-cell-mk01/sh.png",
                --priority = "high",
                width = 143,
                height = 172,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                draw_as_shadow = true,
                shift = util.by_pixel(42, 10)
            }
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-1, -17.5),
            west_position = util.by_pixel(-1, -17.5),
            south_position = util.by_pixel(-1, -17.5),
            east_position = util.by_pixel(-1, -17.5),
            animation = {
                filename = "__pyrawores__/graphics/entity/flotation-cell-mk01/flotation-cell-mk01.png",
                --priority = "low",
                frame_count = 100,
                line_length = 10,
                width = 192,
                height = 160,
                animation_speed = 1
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 3.5}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/flotation-cell.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/flotation-cell.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}

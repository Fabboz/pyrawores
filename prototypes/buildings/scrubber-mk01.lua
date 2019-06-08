RECIPE {
    type = "recipe",
    name = "scrubber-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"steam-engine", 3},
        {"soil-extractormk01", 1},
        {"stone-brick", 20},
        {"electronic-circuit", 15},
    },
    results = {
        {"scrubber-mk01", 1}
    }
}:add_unlock("machines-mk01")

ITEM {
    type = "item",
    name = "scrubber-mk01",
    icon = "__pyrawores__/graphics/icons/scrubber-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk01",
    order = "g",
    place_result = "scrubber-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "scrubber-mk01",
    icon = "__pyrawores__/graphics/icons/scrubber-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "scrubber-mk01"},
    fast_replaceable_group = "scrubber",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"scrubber"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "300kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/scrubber-mk01/scrubber-mk01.png",
                width = 224,
                height = 317,
                line_length = 9,
                frame_count = 50,
                animation_speed = 1,
                shift = util.by_pixel(0, -47)
            },
            {
                filename = "__pyrawores__/graphics/entity/scrubber-mk01/sh.png",
                width = 157,
                height = 192,
                line_length = 10,
                frame_count = 50,
                animation_speed = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(64, 16)
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
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/scrubber.ogg", volume = 2.0},
        idle_sound = {filename = "__pyrawores__/sounds/scrubber.ogg", volume = 1.3},
        apparent_volume = 2.5
    }
}

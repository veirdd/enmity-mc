execute if predicate enmity:environment/in_overworld if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:random/random_0.2 run playsound enmity:ambience.wind ambient @s ~ ~ ~ 0.08 0.9 0
execute if predicate enmity:environment/is_thundering if predicate enmity:environment/in_overworld if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:random/random_0.01 run function enmity:ambience/sounds/thunder
execute if predicate enmity:environment/in_overworld if entity @s[tag=enmity.on_surface] unless score @s enmity.biome_type matches 0 unless score @s enmity.biome_type matches 4 if predicate enmity:environment/is_night if predicate enmity:random/random_0.025 unless predicate enmity:environment/is_raining run playsound enmity:ambience.owl ambient @s ~ ~ ~ 2 1 0

# Desert

execute if score @s enmity.biome_type matches 4 if predicate enmity:random/random_0.01 unless predicate enmity:environment/is_night if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/desert/vulture
execute if score @s enmity.biome_type matches 4 if predicate enmity:random/random_0.001 if predicate enmity:environment/is_night if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/desert/vulture_silent
execute if score @s enmity.biome_type matches 4 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/desert/crickets
execute if score @s enmity.biome_type matches 4 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night run function enmity:ambience/sounds/desert/rattlesnake
execute if score @s enmity.biome_type matches 4 if predicate enmity:random/random_0.001 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night run function enmity:ambience/sounds/desert/rattlesnake

# Savanna

execute if score @s enmity.biome_type matches 9 if predicate enmity:random/random_0.01 unless predicate enmity:environment/is_night if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/savanna/vulture
execute if score @s enmity.biome_type matches 9 if predicate enmity:random/random_0.001 if predicate enmity:environment/is_night if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/savanna/vulture_silent
execute if score @s enmity.biome_type matches 9 if predicate enmity:random/random_0.05 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/savanna/crickets
execute if score @s enmity.biome_type matches 9 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/savanna/mosquito
execute if score @s enmity.biome_type matches 9 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/savanna/crows
execute if score @s enmity.biome_type matches 9 if predicate enmity:random/random_0.001 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/savanna/crows_silent
execute if score @s enmity.biome_type matches 9 if predicate enmity:random/random_0.1 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run playsound enmity:ambience.birds ambient @s ~ ~ ~ 0.3 1.7 0

# Plains

execute if score @s enmity.biome_type matches 1 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/plains/crows
execute if score @s enmity.biome_type matches 1 if predicate enmity:random/random_0.001 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/plains/crows_silent
execute if score @s enmity.biome_type matches 1 if predicate enmity:random/random_0.05 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/plains/crickets

# Forest

execute if score @s enmity.biome_type matches 2 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/forest/crows
execute if score @s enmity.biome_type matches 2 if predicate enmity:random/random_0.001 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/forest/crows_silent
execute if score @s enmity.biome_type matches 2 if predicate enmity:random/random_0.01 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/forest/crickets

# Beach

execute if score @s enmity.biome_type matches 11 if predicate enmity:random/random_0.1 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/beach/seagulls
execute if score @s enmity.biome_type matches 11 if predicate enmity:random/random_0.01 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/beach/seagulls_silent
execute if score @s[y=60,dy=10] enmity.biome_type matches 11 if predicate enmity:random/random_0.5 run playsound enmity:ambience.river ambient @s ~ ~ ~ 0.4 1 0

# Ocean

execute if score @s enmity.biome_type matches 0 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/ocean/seagulls
execute if score @s[y=60,dy=10] enmity.biome_type matches 0 if predicate enmity:random/random_0.25 run playsound enmity:ambience.river ambient @s ~ ~ ~ 0.3 1 0
execute if score @s[y=60,dy=10] enmity.biome_type matches 0 if predicate enmity:random/random_0.25 run playsound enmity:ambience.waves ambient @s ~ ~ ~ 0.2 1 0

# Jungle

execute if score @s enmity.biome_type matches 5 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/jungle/mosquito

# Swamp

execute if score @s enmity.biome_type matches 8 if predicate enmity:random/random_0.01 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/swamp/mosquito
execute if score @s enmity.biome_type matches 8 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/swamp/crows
execute if score @s enmity.biome_type matches 8 if predicate enmity:random/random_0.001 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/swamp/crows_silent

# Mountains

execute if score @s enmity.biome_type matches 1 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/mountains/crows
execute if score @s enmity.biome_type matches 1 if predicate enmity:random/random_0.001 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/mountains/crows_silent

# Taiga / Snowy Taiga

execute if score @s enmity.biome_type matches 7..12 unless score @s enmity.biome_type matches 8..11 if predicate enmity:random/random_0.01 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/taiga/crows
execute if score @s enmity.biome_type matches 7 if predicate enmity:random/random_0.01 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run playsound enmity:ambience.night_crickets ambient @s ~ ~ ~ 0.1 1 0
execute if score @s enmity.biome_type matches 7..12 unless score @s enmity.biome_type matches 8..11 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run function enmity:ambience/sounds/taiga/crows_silent
execute if score @s enmity.biome_type matches 7..12 unless score @s enmity.biome_type matches 8..11 if predicate enmity:random/random_0.005 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky if predicate enmity:environment/is_night run function enmity:ambience/sounds/taiga/wolf

# Structures

execute if predicate enmity:environment/structure/village unless predicate enmity:environment/is_night if predicate enmity:random/random_0.025 run playsound enmity:ambience.bell ambient @s ~ ~ ~ 0.4 1.25 0
execute if predicate enmity:environment/sky if predicate enmity:environment/in_overworld run function enmity:ambience/sounds/sky/loop
execute unless predicate enmity:environment/near_deep_dark if predicate enmity:environment/in_overworld if predicate enmity:environment/deep_underground run function enmity:ambience/sounds/deep_underground/loop
execute unless predicate enmity:environment/near_deep_dark if predicate enmity:environment/in_overworld if predicate enmity:environment/underground run function enmity:ambience/sounds/underground/loop
execute if predicate enmity:environment/near_deep_dark run function enmity:ambience/sounds/deep_dark/loop

execute if score @s enmity.biome_type matches 1 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/plains/loop
execute if score @s enmity.biome_type matches 2 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/forest/loop
execute if score @s[y=60,dy=10] enmity.biome_type matches 3 run function enmity:ambience/sounds/river/loop
execute if score @s enmity.biome_type matches 4 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/desert/loop
execute if score @s enmity.biome_type matches 5 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/jungle/loop
execute if score @s enmity.biome_type matches 6 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/mountains/loop
execute if score @s enmity.biome_type matches 7 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/taiga/loop
execute if score @s[y=60,dy=25] enmity.biome_type matches 8 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/swamp/loop
execute if score @s enmity.biome_type matches 9 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/savanna/loop
execute if score @s enmity.biome_type matches 10 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/snowy/loop
execute if score @s[y=60,dy=25] enmity.biome_type matches 11 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/beach/loop
execute if score @s enmity.biome_type matches 13 if entity @s[tag=enmity.on_surface] unless predicate enmity:environment/sky run function enmity:ambience/sounds/snowy/loop
execute if score @s enmity.biome_type matches 15 run function enmity:ambience/sounds/the_end/loop
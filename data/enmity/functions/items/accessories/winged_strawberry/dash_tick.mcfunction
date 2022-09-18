scoreboard players set @s enmity.math_a 0
execute positioned ^ ^ ^0.7 if block ~0.3 ~ ~0.3 #enmity:not_solid if block ~-0.3 ~ ~0.3 #enmity:not_solid if block ~0.3 ~ ~-0.3 #enmity:not_solid if block ~-0.3 ~ ~-0.3 #enmity:not_solid if block ~0.3 ~1.8 ~0.3 #enmity:not_solid if block ~-0.3 ~1.8 ~0.3 #enmity:not_solid if block ~0.3 ~1.8 ~-0.3 #enmity:not_solid if block ~-0.3 ~1.8 ~-0.3 #enmity:not_solid store result score @s enmity.math_a run tp @s ~ ~ ~
execute unless score @s enmity.math_a matches 1 if score @s enmity.flight matches -10 run particle end_rod ~ ~1 ~ 0 0 0 0 1 force
execute unless score @s enmity.math_a matches 1 if score @s enmity.flight matches -10 run particle dust 0 0.7 1 1 ~ ~1 ~ 0.2 0.2 0.2 0 6 force
execute if score @s enmity.math_a matches 1 run particle end_rod ~ ~1 ~ 0 0 0 0 1 force
execute if score @s enmity.math_a matches 1 run particle dust 0 0.7 1 1 ~ ~1 ~ 0.2 0.2 0.2 0 6 force
execute if score @s enmity.math_a matches 1 at @s run function enmity:items/accessories/winged_strawberry/dash_tick_2
execute if score @s enmity.math_a matches 0 unless predicate enmity:entity/is_on_ground if block ~ ~-0.5 ~ #enmity:not_solid run function enmity:items/accessories/winged_strawberry/wall_bounce
execute unless predicate enmity:entity/is_on_ground run effect give @s levitation 1 0 true
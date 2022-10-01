effect clear @s levitation
execute if score @s enmity.flight matches ..-7 run scoreboard players add @s enmity.flight 1
execute if predicate enmity:entity/is_on_ground unless predicate enmity:entity/is_sneaking if score @s enmity.flight matches -6.. run scoreboard players set @s enmity.flight 0
execute if predicate enmity:entity/is_sneaking if score @s enmity.flight matches 0 run function enmity:items/accessories/winged_strawberry/dash
tag @s add enmity.this
execute as @e[type=area_effect_cloud,tag=enmity.celeste_dash] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
tag @s remove enmity.this
execute if score @s enmity.flight matches ..-7 rotated as @e[type=area_effect_cloud,tag=enmity.this] run function enmity:items/accessories/winged_strawberry/dash_tick
tag @e[type=area_effect_cloud,tag=enmity.this] remove enmity.this
effect give @s jump_boost 2 1 true
effect give @s speed 2 1 true
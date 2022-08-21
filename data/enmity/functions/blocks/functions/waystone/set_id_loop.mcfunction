scoreboard players add @s enmity.math_a 1
tag @e[type=marker,tag=enmity.found] remove enmity.found
execute as @e[type=marker,tag=enmity.waystone_teleporter] if score @s enmity.waystone = @e[type=area_effect_cloud,tag=enmity.this,limit=1] enmity.math_a run tag @s add enmity.found
execute if entity @e[type=marker,tag=enmity.found] run function enmity:blocks/functions/waystone/set_id_loop
tag @e[type=marker,tag=enmity.found] remove enmity.found
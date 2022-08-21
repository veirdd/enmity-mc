tp @s ^ ^ ^0.6
tag @s add enmity.this
particle dust 0.75 0.625 0.9 0.3 ~ ~ ~ 0.02 0.02 0.02 0 4 force
particle dust 0.75 0.625 0.9 0.3 ^ ^ ^0.2 0.02 0.02 0.02 0 4 force
particle dust 0.75 0.625 0.9 0.3 ^ ^ ^0.4 0.02 0.02 0.02 0 4 force
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/crystal_storm/die_projectile
execute if score @s enmity.age matches 35.. run kill @s
execute if score @s enmity.impact_ct matches 3.. run function enmity:items/usable/crystal_storm/die_projectile
tag @s remove enmity.this
execute positioned ~0.31 ~ ~ run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/x_bounce
execute if entity @s[tag=enmity.in_solid] run tp @s ~-0.31 ~ ~
tag @s remove enmity.in_solid
execute positioned ~-0.31 ~ ~ run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/x_bounce
execute if entity @s[tag=enmity.in_solid] run tp @s ~0.31 ~ ~
tag @s remove enmity.in_solid
execute positioned ~ ~0.31 ~ run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/y_bounce
execute if entity @s[tag=enmity.in_solid] run tp @s ~ ~-0.31 ~
tag @s remove enmity.in_solid
execute positioned ~ ~-0.31 ~ run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/y_bounce
execute if entity @s[tag=enmity.in_solid] run tp @s ~ ~0.31 ~
tag @s remove enmity.in_solid
execute positioned ~ ~ ~0.31 run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/z_bounce
execute if entity @s[tag=enmity.in_solid] run tp @s ~ ~ ~-0.31
tag @s remove enmity.in_solid
execute positioned ~ ~ ~-0.31 run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/z_bounce
execute if entity @s[tag=enmity.in_solid] run tp @s ~ ~ ~0.31
tag @s remove enmity.in_solid
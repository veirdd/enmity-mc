tag @s add enmity.this
execute positioned ~ ~1.7 ~ run function enmity:utility/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.4 run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] positioned ~ ~1.7 ~ run function enmity:items/usable/sky_fracture/die_projectile
tp @s ^ ^ ^0.8
data merge entity @s[scores={enmity.age=5}] {ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1005}}]}
execute if score @s enmity.age matches ..5 run particle dust 0.2 0.7 1 0.5 ~ ~1.7 ~ 0 0 0 0 1 force
execute if score @s enmity.age matches 100.. run kill @s
execute positioned ~ ~1.7 ~ positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.2 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.4 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.6 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] positioned ~ ~1.7 ~ run function enmity:items/usable/sky_fracture/damage_projectile
tag @s remove enmity.this
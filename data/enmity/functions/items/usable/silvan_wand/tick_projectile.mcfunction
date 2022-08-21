tag @s add enmity.this
execute positioned ~ ~1.7 ~ run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] positioned ~ ~1.7 ~ run function enmity:items/usable/silvan_wand/die_projectile
tp @s ^ ^ ^0.5
particle dust 0.45 0.75 0 0.5 ~ ~1.7 ~ 0 0 0 0 1 force
playsound minecraft:block.grass.step neutral @a[distance=0..] ~ ~1.7 ~ 1 1.5 0
execute if score @s enmity.age matches 100.. run kill @s
execute positioned ~ ~1.7 ~ as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.125 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.375 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] positioned ~ ~1.7 ~ run function enmity:items/usable/silvan_wand/die_projectile
tag @s remove enmity.this
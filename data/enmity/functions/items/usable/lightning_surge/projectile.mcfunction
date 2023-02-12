tag @s add enmity.this
execute positioned ~0.25 ~0.25 ~ run function enmity:misc/solid_detection/check
execute positioned ~-0.25 ~0.25 ~ run function enmity:misc/solid_detection/check
execute positioned ~ ~0.25 ~0.25 run function enmity:misc/solid_detection/check
execute positioned ~ ~0.25 ~-0.25 run function enmity:misc/solid_detection/check
execute positioned ~0.25 ~-0.25 ~ run function enmity:misc/solid_detection/check
execute positioned ~-0.25 ~-0.25 ~ run function enmity:misc/solid_detection/check
execute positioned ~ ~-0.25 ~0.25 run function enmity:misc/solid_detection/check
execute positioned ~ ~-0.25 ~-0.25 run function enmity:misc/solid_detection/check
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.17 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.33 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/lightning_surge/damage
tag @s remove enmity.this
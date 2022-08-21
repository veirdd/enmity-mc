tag @s add enmity.this
execute if entity @s[tag=enmity.player_targeting] as @e[type=!#enmity:not_living,tag=!enmity.projectile,limit=1,sort=nearest,distance=..8] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.player_targeting] as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,limit=1,sort=nearest,distance=..8] run tag @s add enmity.homing_target
tp @s ^ ^ ^0.35 facing entity @e[type=!#enmity:not_living,tag=enmity.homing_target,limit=1] eyes
particle dust 0.6 1 0.15 1 ~ ~ ~ 0 0 0 0 1 force
execute if entity @e[type=!#enmity:not_living,tag=enmity.homing_target] run particle dust 0.6 1 0.15 1 ^ ^ ^0.175 0 0 0 0 1 force
tag @e[tag=enmity.homing_target] remove enmity.homing_target
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/accessories/effervescent_aglets/damage_projectile
execute if score @s enmity.age matches 30.. run kill @s
tag @s remove enmity.this
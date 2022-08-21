execute positioned ~ ~-1 ~ run tag @p[distance=..24] add enmity.homing_target
execute facing entity @a[tag=enmity.homing_target,limit=1] eyes run tp @s ^ ^ ^0.375
tag @a[tag=enmity.homing_target] remove enmity.homing_target
playsound block.chorus_flower.grow neutral @a[distance=0..] ~ ~ ~ 0.5 0.7 0
particle dust 0 0 0 1.5 ~ ~ ~ 0.025 0.025 0.025 0 2 force
execute if score @s enmity.age matches 5.. as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,type=!wither] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if score @s enmity.age matches 5.. positioned ^ ^ ^0.15 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,type=!wither] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/wither/projectiles/homing_soul/damage_projectile
execute if entity @s[scores={enmity.age=80..}] run function enmity:entities/mobs/wither/projectiles/homing_soul/die_projectile
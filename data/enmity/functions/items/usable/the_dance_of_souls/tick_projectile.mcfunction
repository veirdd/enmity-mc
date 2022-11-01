tag @s add enmity.this
execute if entity @s[tag=enmity.ghast] if score @s enmity.age matches 15.. positioned ~ ~-1 ~ as @e[type=player,distance=..16] run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.ghast,tag=enmity.player_targeting] positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,distance=..16] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.ghast,tag=!enmity.player_targeting] positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,distance=..16] run tag @s add enmity.homing_target
execute facing entity @e[tag=enmity.homing_target,limit=1,sort=nearest] eyes if block ^ ^ ^0.4 #enmity:not_solid run tp @s ^ ^ ^0.4
execute if entity @s[tag=enmity.ghast] if entity @e[tag=enmity.homing_target] run particle firework
tag @e[tag=enmity.homing_target] remove enmity.homing_target
playsound block.chorus_flower.grow neutral @a[distance=0..] ~ ~ ~ 0.5 0.7 0
execute if entity @s[tag=!enmity.green] run particle dust 1 1 1 1 ~ ~ ~ 0.025 0.025 0.025 0 3 force
execute if entity @s[tag=enmity.green] run particle dust 0 1 0 1 ~ ~ ~ 0.025 0.025 0.025 0 3 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.2 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/the_dance_of_souls/damage_projectile
execute if score @s enmity.age matches 80.. run function enmity:items/usable/the_dance_of_souls/die_projectile
tag @s remove enmity.this
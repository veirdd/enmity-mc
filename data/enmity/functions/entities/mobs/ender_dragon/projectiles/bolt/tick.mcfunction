tag @s add enmity.this
playsound entity.wither.ambient neutral @a[distance=0..] ~ ~ ~ 0.2 2 0
execute if score %difficulty enmity.value matches 1 positioned ^ ^ ^5 facing entity @p[tag=enmity.dragon_target] eyes positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["enmity.new"]}
execute if score %difficulty enmity.value matches 2 positioned ^ ^ ^5 facing entity @p[tag=enmity.dragon_target] eyes positioned ^ ^ ^0.6 run summon marker ~ ~ ~ {Tags:["enmity.new"]}
tp @s ^ ^ ^0.8 facing entity @e[type=marker,tag=enmity.new,limit=1]
kill @e[type=marker,tag=enmity.new]
particle smoke ~ ~ ~ 0.03 0.03 0.03 0.1 1 force
particle reverse_portal ~ ~ ~ 0 0 0 0 1 force
particle dust 0 0 0 1 ~ ~ ~ 0.05 0.05 0.05 0.05 2 force
particle smoke ^ ^ ^0.4 0.03 0.03 0.03 0.1 1 force
particle reverse_portal ^ ^ ^0.4 0 0 0 0 1 force
particle dust 0 0 0 1 ^ ^ ^0.4 0.05 0.05 0.05 0.05 2 force
execute as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~ ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/ender_dragon/projectiles/bolt/damage
execute if score @s enmity.age matches 160.. run function enmity:entities/mobs/ender_dragon/projectiles/bolt/die
execute unless entity @a[tag=enmity.dragon_target] run function enmity:entities/mobs/ender_dragon/projectiles/bolt/die
execute if entity @p[tag=enmity.dragon_target,distance=..10] run scoreboard players add @s enmity.age 3
tag @s remove enmity.this
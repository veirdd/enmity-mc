tag @s add enmity.this
playsound entity.guardian.ambient neutral @a[distance=0..] ~ ~ ~ 2 2 0
execute if score %difficulty enmity.value matches 1 positioned ^ ^ ^5 facing entity @p[tag=enmity.dragon_target] eyes positioned ^ ^ ^0.2 run summon marker ~ ~ ~ {Tags:["enmity.new"]}
execute if score %difficulty enmity.value matches 2 positioned ^ ^ ^5 facing entity @p[tag=enmity.dragon_target] eyes positioned ^ ^ ^0.3 run summon marker ~ ~ ~ {Tags:["enmity.new"]}
execute if entity @p[tag=enmity.dragon_target,distance=..24] run tp @s ^ ^ ^0.6 facing entity @e[type=marker,tag=enmity.new,limit=1]
execute unless entity @p[tag=enmity.dragon_target,distance=..24] run tp @s ^ ^ ^0.8 facing entity @e[type=marker,tag=enmity.new,limit=1]
kill @e[type=marker,tag=enmity.new]
particle dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.01 2 force
particle dragon_breath ^ ^ ^0.3 0.2 0.2 0.2 0.01 2 force
execute as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~ ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/ender_dragon/projectiles/large_bolt/damage
execute if score @s enmity.age matches 220.. run function enmity:entities/mobs/ender_dragon/projectiles/large_bolt/die
execute unless block ~ ~ ~ #enmity:not_solid run function enmity:entities/mobs/ender_dragon/projectiles/large_bolt/die
execute unless entity @a[tag=enmity.dragon_target] run function enmity:entities/mobs/ender_dragon/projectiles/large_bolt/die
execute if entity @p[tag=enmity.dragon_target,distance=..10] run scoreboard players add @s enmity.age 10
tag @s remove enmity.this
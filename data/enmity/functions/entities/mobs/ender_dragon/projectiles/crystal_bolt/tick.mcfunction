tag @s add enmity.this
execute if score %difficulty enmity.value matches 1 positioned ^ ^ ^5 facing entity @p[tag=enmity.dragon_target] eyes positioned ^ ^ ^0.35 run summon marker ~ ~ ~ {Tags:["enmity.new"]}
execute if score %difficulty enmity.value matches 2 positioned ^ ^ ^5 facing entity @p[tag=enmity.dragon_target] eyes positioned ^ ^ ^0.45 run summon marker ~ ~ ~ {Tags:["enmity.new"]}
execute if entity @p[distance=..24] run tp @s ^ ^ ^0.9 facing entity @e[type=marker,tag=enmity.new,limit=1]
execute unless entity @p[distance=..24] run tp @s ^ ^ ^1.2 facing entity @e[type=marker,tag=enmity.new,limit=1]
kill @e[type=marker,tag=enmity.new]
particle dust 0.5 0 1 0.8 ~ ~ ~ 0.1 0.1 0.1 0 2 force
particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~ ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/ender_dragon/projectiles/crystal_bolt/damage
execute if score @s enmity.age matches 220.. run function enmity:entities/mobs/ender_dragon/projectiles/crystal_bolt/die
execute unless entity @a[tag=enmity.dragon_target] run function enmity:entities/mobs/ender_dragon/projectiles/crystal_bolt/die
execute if entity @p[distance=..10] run scoreboard players add @s enmity.age 10
execute if score %difficulty enmity.value matches 1 unless block ~ ~ ~ #enmity:not_solid run kill @s
tag @s remove enmity.this
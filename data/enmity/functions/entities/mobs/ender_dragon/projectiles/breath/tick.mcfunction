tag @s add enmity.this
execute if score %difficulty enmity.value matches 1 positioned ^ ^ ^5 facing entity @p[tag=enmity.dragon_target] eyes positioned ^ ^ ^0.15 run summon marker ~ ~ ~ {Tags:["enmity.new"]}
execute if score %difficulty enmity.value matches 2 positioned ^ ^ ^5 facing entity @p[tag=enmity.dragon_target] eyes positioned ^ ^ ^0.2 run summon marker ~ ~ ~ {Tags:["enmity.new"]}
tp @s ^ ^ ^1.2 facing entity @e[type=marker,tag=enmity.new,limit=1]
kill @e[type=marker,tag=enmity.new]
playsound entity.guardian.ambient neutral @a[distance=0..] ~ ~ ~ 2 0.2 0
execute if score @s enmity.age matches ..10 run particle dragon_breath ~ ~ ~ 0.3 0.3 0.3 0.01 3 force
execute if score @s enmity.age matches 11..20 run particle dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.01 4 force
execute if score @s enmity.age matches 21..30 run particle dragon_breath ~ ~ ~ 0.8 0.8 0.8 0.01 6 force
execute if score @s enmity.age matches 31..40 run particle dragon_breath ~ ~ ~ 1 1 1 0.01 7 force
execute if score @s enmity.age matches 41..50 run particle dragon_breath ~ ~ ~ 1.3 1.3 1.3 0.01 8 force
execute if score @s enmity.age matches 51.. run particle dragon_breath ~ ~ ~ 1.6 1.6 1.6 0.01 10 force
tag @e[distance=..4,type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile] add enmity.hit
execute as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~ as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~ ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~-1 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/ender_dragon/projectiles/breath/damage
execute unless entity @a[tag=enmity.dragon_target] run kill @s
execute if score @s enmity.age matches 60.. run kill @s
execute if score %difficulty enmity.value matches 1 unless block ~ ~ ~ #enmity:not_solid run kill @s
tag @s remove enmity.this
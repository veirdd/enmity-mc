item replace entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand with air
playsound entity.zombified_piglin.death neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_4
summon marker ~ ~ ~ {Tags:["enmity.giant_spawn"]}
execute if score @s enmity.math_a matches 1 run spreadplayers ~12 ~12 0 8 false @e[type=marker,tag=enmity.giant_spawn]
execute if score @s enmity.math_a matches 2 run spreadplayers ~12 ~-12 0 8 false @e[type=marker,tag=enmity.giant_spawn]
execute if score @s enmity.math_a matches 3 run spreadplayers ~-12 ~12 0 8 false @e[type=marker,tag=enmity.giant_spawn]
execute if score @s enmity.math_a matches 4 run spreadplayers ~-12 ~-12 0 8 false @e[type=marker,tag=enmity.giant_spawn]
execute at @e[type=marker,tag=enmity.giant_spawn] run summon giant ~ ~-12 ~ {PersistenceRequired:1,Invulnerable:1,Tags:["enmity.rising","enmity.invulnerable","enmity.boss"]}
kill @e[type=marker,tag=enmity.giant_spawn]
tellraw @a {"text":"The Giant has awoken.","color":"gray"}
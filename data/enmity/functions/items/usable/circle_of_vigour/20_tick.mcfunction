execute if score @s enmity.age matches 0 run function enmity:items/usable/circle_of_vigour/die
execute if score @s enmity.age matches 55..60 run data modify entity @s CustomName set value '{"text":"||||||||||","color":"green"}'
execute if score @s enmity.age matches 49..54 run data modify entity @s CustomName set value '[{"text":"|||||||||","color":"green"},{"text":"|","color":"gray"}]'
execute if score @s enmity.age matches 43..48 run data modify entity @s CustomName set value '[{"text":"||||||||","color":"green"},{"text":"||","color":"gray"}]'
execute if score @s enmity.age matches 37..42 run data modify entity @s CustomName set value '[{"text":"|||||||","color":"yellow"},{"text":"|||","color":"gray"}]'
execute if score @s enmity.age matches 31..36 run data modify entity @s CustomName set value '[{"text":"||||||","color":"yellow"},{"text":"||||","color":"gray"}]'
execute if score @s enmity.age matches 25..30 run data modify entity @s CustomName set value '[{"text":"|||||","color":"yellow"},{"text":"|||||","color":"gray"}]'
execute if score @s enmity.age matches 19..24 run data modify entity @s CustomName set value '[{"text":"||||","color":"yellow"},{"text":"||||||","color":"gray"}]'
execute if score @s enmity.age matches 13..18 run data modify entity @s CustomName set value '[{"text":"|||","color":"red"},{"text":"|||||||","color":"gray"}]'
execute if score @s enmity.age matches 7..12 run data modify entity @s CustomName set value '[{"text":"||","color":"red"},{"text":"||||||||","color":"gray"}]'
execute if score @s enmity.age matches 0..6 run data modify entity @s CustomName set value '[{"text":"|","color":"red"},{"text":"|||||||||","color":"gray"}]'
tag @e[type=!#enmity:not_living,tag=!enmity.projectile,distance=..2] add enmity.hit
execute as @e[type=!#enmity:not_living,tag=enmity.hit] store result score @s enmity.hp_dummy run data get entity @s Health
scoreboard players set @e[type=!#enmity:not_living,tag=enmity.hit] enmity.taken_dmg -1
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.hp_dummy -= @s enmity.taken_dmg
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.hp_dummy
execute as @a[tag=enmity.hit,gamemode=!creative,tag=!enmity.update_health] run function enmity:misc/health_modification/request
execute as @e[type=!#enmity:not_living,tag=enmity.hit] at @s anchored eyes positioned ^ ^ ^ run particle heart ~ ~0.5 ~ 0 0 0 0 1 force
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
playsound block.beacon.ambient neutral @a[distance=0..] ~ ~ ~ 1 2 0
playsound block.beacon.ambient neutral @a[distance=0..] ~ ~ ~ 1 1.8 0
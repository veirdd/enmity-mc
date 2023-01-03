execute as @e[type=!#enmity:not_living,tag=enmity.hit] store result score @s enmity.hp_dummy run data get entity @s Health
scoreboard players set @e[type=!#enmity:not_living,tag=enmity.hit] enmity.taken_dmg -2
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.hp_dummy -= @s enmity.taken_dmg
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.hp_dummy
execute as @a[tag=enmity.hit,gamemode=!creative,tag=!enmity.update_health] run function enmity:misc/health_modification/request
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
particle heart ~ ~ ~ 0 0 0 0 1 force
function enmity:items/usable/healing_bolt/die_projectile
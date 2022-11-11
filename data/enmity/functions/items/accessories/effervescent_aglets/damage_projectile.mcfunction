execute as @a[tag=!enmity.invulnerable,tag=enmity.hit] unless data entity @s ActiveEffects[{Id:20}] run tag @s add enmity.clear_wither
effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] wither 1 1 true
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] store result score @s enmity.hp_dummy run data get entity @s Health
scoreboard players operation @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] enmity.taken_dmg = @s enmity.dmg
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.taken_dmg -= @s enmity.dmg_rdc
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg *= @s enmity.dmg_rdc_mtp
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg /= %const_100 enmity.value
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] at @s run function enmity:utility/damage_indicators/show
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] if score @s enmity.hp_dummy <= @s enmity.taken_dmg run kill @s
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] if score @s enmity.taken_dmg matches ..0 run scoreboard players set @s enmity.taken_dmg 1
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.hp_dummy -= @s enmity.taken_dmg
execute as @e[type=!#enmity:not_living,tag=enmity.hit,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.hp_dummy
execute as @a[tag=enmity.hit,gamemode=!creative,gamemode=!spectator,tag=!enmity.update_health] run function enmity:utility/health_modification/request
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
kill @s
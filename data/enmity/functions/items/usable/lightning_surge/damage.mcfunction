execute as @a[tag=!enmity.invulnerable,tag=enmity.hit] unless data entity @s ActiveEffects[{Id:20}] run tag @s add enmity.clear_wither
effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] wither 1 1 true
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] store result score @s enmity.hp_dummy run data get entity @s Health
scoreboard players operation @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.taken_dmg = @s enmity.dmg
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg *= @s enmity.dmg_rdc_mtp
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg /= %const_100 enmity.value
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players operation @s enmity.taken_dmg -= @s enmity.dmg_rdc
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,type=!ender_dragon] if score @s enmity.hp_dummy <= @s enmity.taken_dmg run kill @s
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] unless entity @s[gamemode=creative] at @s run function enmity:misc/damage/init
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.hp_dummy -= @s enmity.taken_dmg
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.hp_dummy
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative,tag=!enmity.update_health] run function enmity:misc/health_modification/request
scoreboard players set @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.iframes 2
execute at @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players add @s enmity.impact_ct 1
tag @e[tag=enmity.hit] add enmity.channeled
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
scoreboard players remove @s enmity.dmg 1
particle electric_spark ^ ^ ^0.4 0 0 0 1 50 force
playsound minecraft:entity.creeper.primed neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound minecraft:entity.creeper.primed neutral @a[distance=0..] ~ ~ ~ 2 2 0
execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.lightning_surge,limit=1] enmity.player_id run tag @s add enmity.channel
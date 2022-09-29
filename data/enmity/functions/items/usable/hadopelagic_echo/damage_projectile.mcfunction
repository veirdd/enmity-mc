execute positioned ^ ^ ^30 positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,tag=!enmity.boss] run function enmity:utility/motion
effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] wither 1 1 true
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] store result score @s enmity.math_a run data get entity @s Health
scoreboard players operation @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.math_b = @s enmity.dmg
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players operation @s enmity.math_b -= @s enmity.dmg_rdc
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.math_b *= @s enmity.dmg_rdc_mtp
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.math_b /= %const_100 enmity.value
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] at @s run function enmity:utility/damage_indicators/show
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative] at @s run function enmity:utility/damage_indicators/show
execute at @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players add @s enmity.impact_ct 1
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,type=!ender_dragon] if score @s enmity.math_a <= @s enmity.math_b run kill @s
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] if score @s enmity.math_b matches ..0 run scoreboard players set @s enmity.math_b 1
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.math_a -= @s enmity.math_b
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.math_a
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative,tag=!enmity.update_health] run function enmity:utility/health_modification/request
scoreboard players set @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.iframes 4
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
particle sculk_charge_pop ~ ~ ~ 0.3 0.3 0.3 0.05 10 force
playsound minecraft:block.sculk_sensor.clicking neutral @a[distance=0..] ~ ~ ~ 2 1.3 0
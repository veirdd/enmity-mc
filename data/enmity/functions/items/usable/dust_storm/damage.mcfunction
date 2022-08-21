effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] wither 1 1 true
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] store result score @s enmity.math_a run data get entity @s Health
scoreboard players operation @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.math_b = @s enmity.dmg
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players operation @s enmity.math_b -= @s enmity.dmg_rdc
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.math_b *= @s enmity.dmg_rdc_mtp
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.math_b /= %const_100 enmity.value
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] at @s run function enmity:utility/damage_indicators/show
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative] at @s run function enmity:utility/damage_indicators/show
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,type=!ender_dragon] if score @s enmity.math_a <= @s enmity.math_b run kill @s
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] if score @s enmity.math_b matches ..0 run scoreboard players set @s enmity.math_b 1
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.math_a -= @s enmity.math_b
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.math_a
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative,tag=!enmity.update_health] run function enmity:utility/health_modification/request
scoreboard players set @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.iframes 2
execute positioned ^ ^ ^70 positioned ~ ~30 ~ run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute store result score @s enmity.math_a run data get entity @s Pos[0]
execute store result score @s enmity.math_b run data get entity @s Pos[1]
execute store result score @s enmity.math_c run data get entity @s Pos[2]
execute store result score @s enmity.math_d run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[0]
execute store result score @s enmity.math_e run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[1]
execute store result score @s enmity.math_f run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[2]
execute store result entity @e[type=!#enmity:not_living,tag=!enmity.boss,tag=enmity.hit,limit=1] Motion[0] double 0.01 run scoreboard players operation @s enmity.math_d -= @s enmity.math_a
execute store result entity @e[type=!#enmity:not_living,tag=!enmity.boss,tag=enmity.hit,limit=1] Motion[1] double 0.01 run scoreboard players operation @s enmity.math_e -= @s enmity.math_b
execute store result entity @e[type=!#enmity:not_living,tag=!enmity.boss,tag=enmity.hit,limit=1] Motion[2] double 0.01 run scoreboard players operation @s enmity.math_f -= @s enmity.math_c
kill @e[type=marker,tag=enmity.direction_anchor]
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
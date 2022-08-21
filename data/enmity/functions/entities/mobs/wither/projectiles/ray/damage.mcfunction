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
tag @s add enmity.this
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative,tag=!enmity.update_health] run function enmity:utility/health_modification/request
tag @s remove enmity.this
effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] wither 4 3 true
scoreboard players set @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.iframes 2
tag @a[tag=!enmity.invulnerable,tag=enmity.hit] add enmity.update_health
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
particle large_smoke ~ ~ ~ 0 0 0 0.05 30 force
playsound entity.wither.hurt neutral @a[distance=0..] ~ ~ ~ 2 0 0
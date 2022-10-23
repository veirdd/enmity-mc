tag @e[type=!#enmity:not_living,tag=enmity.hit,limit=1,sort=nearest] add enmity.this2
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
tag @e[type=!#enmity:not_living,tag=enmity.this2] add enmity.hit
tag @e[type=!#enmity:not_living,tag=enmity.this2] remove enmity.this2
effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] wither 1 1 true
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] store result score @s enmity.math_a run data get entity @s Health
scoreboard players operation @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.math_b = @s enmity.dmg
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players operation @s enmity.math_b -= @s enmity.dmg_rdc
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.math_b *= @s enmity.dmg_rdc_mtp
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.math_b /= %const_100 enmity.value
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,type=!ender_dragon] if score @s enmity.math_a <= @s enmity.math_b run kill @s
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] at @s run function enmity:utility/damage_indicators/show
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative] at @s run function enmity:utility/damage_indicators/show
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] if score @s enmity.math_b matches ..0 run scoreboard players set @s enmity.math_b 1
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.math_a -= @s enmity.math_b
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.math_a
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative,gamemode=!spectator,tag=!enmity.update_health] run function enmity:utility/health_modification/request
execute as @e[type=!#enmity:not_living,type=!player,tag=enmity.hit] unless score @s enmity.phantasmal_curse matches 400.. run scoreboard players add @e[tag=enmity.hit] enmity.phantasmal_curse 60
execute as @a[tag=enmity.hit] unless score @s enmity.phantasmal_curse matches 400.. run scoreboard players add @e[tag=enmity.hit] enmity.phantasmal_curse 20
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
function enmity:items/usable/delirium/die_projectile
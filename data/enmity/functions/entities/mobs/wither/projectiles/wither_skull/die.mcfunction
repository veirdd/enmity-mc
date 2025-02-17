tag @s add enmity.this
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
tag @a[tag=!enmity.invulnerable,tag=enmity.hit] add enmity.update_health
execute if score %difficulty enmity.value matches 1 run effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] wither 4 1
execute if score %difficulty enmity.value matches 2 run effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] wither 3 3
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
particle explosion ~ ~ ~ 0 0 0 0 1 force
particle squid_ink ~ ~ ~ 0.3 0.3 0.3 0.2 20 force
playsound entity.wither.hurt neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound entity.wither.hurt neutral @a[distance=0..] ~ ~ ~ 2 1.3 0
kill @s
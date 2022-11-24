execute positioned ^ ^ ^90 positioned ~ ~40 ~ run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,tag=!enmity.boss] run function enmity:misc/motion
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
scoreboard players set @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.iframes 10
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.3 30 force
playsound entity.ender_dragon.flap neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
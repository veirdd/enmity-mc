playsound block.packed_mud.step hostile @a[distance=0..] ~ ~ ~ 2 1 0
playsound block.packed_mud.step hostile @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound block.packed_mud.step hostile @a[distance=0..] ~ ~ ~ 2 0 0
particle block dirt ~ ~ ~ 1.25 0.5 1.25 0 20 force
particle block stone ~ ~ ~ 1.25 0.5 1.25 0 20 force
tag @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,distance=..4,type=!player,type=!giant] add enmity.hit
tag @a[scores={enmity.iframes=0},distance=0.1..4,gamemode=!creative,gamemode=!spectator] add enmity.hit
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit] unless data entity @s ActiveEffects[{Id:20}] run tag @s add enmity.clear_wither
effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] wither 1 1 true
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] store result score @s enmity.hp_dummy run data get entity @s Health
scoreboard players operation @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] enmity.taken_dmg = @s enmity.dmg
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players add @s enmity.taken_dmg 1
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players operation @s enmity.taken_dmg -= @s enmity.dmg_rdc
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg *= @s enmity.dmg_rdc_mtp
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg /= %const_100 enmity.value
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,type=!ender_dragon] if score @s enmity.hp_dummy <= @s enmity.taken_dmg run kill @s
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit] unless entity @s[gamemode=creative] at @s run function enmity:utility/damage_indicators/show
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] if score @s enmity.taken_dmg matches ..0 run scoreboard players set @s enmity.taken_dmg 1
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] run scoreboard players operation @s enmity.hp_dummy -= @s enmity.taken_dmg
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.hp_dummy
tag @s add enmity.this
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,tag=!enmity.update_health] run function enmity:utility/health_modification/request
tag @s remove enmity.this
tag @a[tag=!enmity.invulnerable,tag=enmity.hit] add enmity.update_health
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
playsound entity.wither.ambient neutral @a[distance=0..] ~ ~ ~ 1 1.5 0
particle squid_ink ~ ~1 ~ 0.3 0.3 0.3 0.1 3 force
particle reverse_portal ~ ~1 ~ 0.2 0.2 0.2 0.6 6 force
particle smoke ~ ~1 ~ 0.2 0.2 0.2 0.3 8 force
tag @s add enmity.hit
execute unless data entity @s[tag=!enmity.invulnerable,type=player] ActiveEffects[{Id:20}] run tag @s add enmity.clear_wither
effect give @s[type=!#enmity:not_living,tag=!enmity.invulnerable] wither 1 1 true
execute if entity @s[tag=!enmity.invulnerable,type=!player] store result score @s enmity.hp_dummy run data get entity @s Health
execute if entity @s[tag=!enmity.invulnerable,type=!player] run scoreboard players operation @s enmity.taken_dmg = %const_14 enmity.value
execute if entity @s[tag=!enmity.invulnerable,type=!player] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg *= @s enmity.dmg_rdc_mtp
execute if entity @s[tag=!enmity.invulnerable,type=!player] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg /= %const_100 enmity.value
execute if entity @s[tag=!enmity.invulnerable,type=!player] run scoreboard players operation @s enmity.math_a = @s enmity.dmg_rdc
execute if entity @s[tag=!enmity.invulnerable,type=!player] run scoreboard players operation @s enmity.math_a /= %const_2 enmity.value
execute if entity @s[tag=!enmity.invulnerable,type=!player] run scoreboard players operation @s enmity.taken_dmg -= @s enmity.math_c
execute if entity @s[tag=!enmity.invulnerable,type=player] run scoreboard players set @s enmity.taken_dmg 1
execute if entity @s[tag=!enmity.invulnerable,type=!player,type=!ender_dragon] if score @s enmity.hp_dummy <= @s enmity.taken_dmg run kill @s
execute if entity @s[tag=!enmity.invulnerable] unless entity @s[gamemode=creative] at @s run function enmity:misc/damage/init
execute if entity @s[tag=!enmity.invulnerable,type=!player] run scoreboard players operation @s enmity.hp_dummy -= @s enmity.taken_dmg
execute if entity @s[tag=!enmity.invulnerable,type=!player] store result entity @s Health float 1 run scoreboard players get @s enmity.hp_dummy
execute if entity @s[tag=!enmity.invulnerable,type=player,gamemode=!creative,gamemode=!spectator,tag=!enmity.update_health] run function enmity:misc/health_modification/request
tag @s remove enmity.hit
scoreboard players remove @s enmity.phantasmal_curse 1
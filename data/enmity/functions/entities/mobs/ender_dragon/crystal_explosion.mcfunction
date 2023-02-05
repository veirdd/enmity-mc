tag @p add enmity.hit
execute if score %difficulty enmity.value matches 1 as @p[tag=enmity.hit] run scoreboard players set @s enmity.taken_dmg 30
execute if score %difficulty enmity.value matches 2 as @p[tag=enmity.hit] run scoreboard players set @s enmity.taken_dmg 45
execute as @p[tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg *= @s enmity.dmg_rdc_mtp
execute as @p[tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg /= %const_100 enmity.value
execute as @p[tag=enmity.hit] run scoreboard players operation @s enmity.taken_dmg -= @s enmity.dmg_rdc
execute as @p[tag=enmity.hit] unless entity @s[gamemode=creative] at @s run function enmity:misc/damage/init
execute as @p[tag=enmity.hit,tag=!enmity.invulnerable,gamemode=!creative,tag=!enmity.update_health] run function enmity:misc/health_modification/request
execute at @p[tag=enmity.hit] positioned ~ ~1.6 ~ facing entity @p feet run summon tnt ^ ^ ^0.25 {Fuse:0}
tag @p[tag=enmity.hit] remove enmity.hit
scoreboard players set @s enmity.cooldown 60
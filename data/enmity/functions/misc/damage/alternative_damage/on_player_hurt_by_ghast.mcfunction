tag @s add enmity.hit
scoreboard players set @s enmity.taken_dmg 10
execute if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg *= @s enmity.dmg_rdc_mtp
execute if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.taken_dmg /= %const_100 enmity.value
scoreboard players operation @s enmity.taken_dmg -= @s enmity.dmg_rdc
execute unless entity @s[gamemode=creative] at @s run function enmity:misc/damage/init
execute if entity @s[tag=!enmity.invulnerable,gamemode=!creative,tag=!enmity.update_health] run function enmity:misc/health_modification/request
tag @s remove enmity.hit
advancement revoke @s only enmity:other/hurt_by_ghast
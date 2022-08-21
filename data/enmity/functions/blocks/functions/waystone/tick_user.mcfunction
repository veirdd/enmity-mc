execute unless block ~ ~-1 ~ spawner{SpawnData:{entity:{Tags:["enmity.waystone"]}}} run function enmity:blocks/functions/waystone/break_teleport
execute unless predicate enmity:entity/is_sneaking unless entity @s[tag=enmity.teleport_enabled] run function enmity:blocks/functions/waystone/break_teleport
execute if predicate enmity:entity/is_sneaking run scoreboard players add @s enmity.waystone 1
execute if score @s enmity.waystone matches 1 run playsound block.portal.trigger block @s ~ ~ ~ 1 1.325 0
execute if score @s enmity.waystone matches 60.. unless entity @s[tag=enmity.teleport_enabled] run function enmity:blocks/functions/waystone/enable_teleport
execute positioned ~ ~-0.46875 ~ as @e[type=area_effect_cloud,tag=enmity.waystone_id,limit=1,sort=nearest] unless score @s enmity.waystone matches 1.. run tag @s add enmity.this
execute as @e[type=area_effect_cloud,tag=enmity.this] at @s run function enmity:blocks/functions/waystone/set_id
execute if score @s enmity.waystone_tp matches -2147483648..2147483647 run function enmity:blocks/functions/waystone/teleport_check
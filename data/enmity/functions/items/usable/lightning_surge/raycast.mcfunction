scoreboard players add @s enmity.raycast 1
particle bubble_pop ~ ~ ~ 0.1 0.1 0.1 0 1 force
particle electric_spark ^ ^ ^0.25 0.1 0.1 0.1 0 1 force
tag @s[tag=enmity.current_entity] remove enmity.current_entity
tp @e[type=marker,tag=enmity.lightning_surge,limit=1] ~ ~ ~ facing ^ ^ ^1
execute if entity @e[type=marker,tag=enmity.lightning_surge,limit=1,tag=enmity.in_solid] run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast 0
execute if score @e[type=marker,limit=1,tag=enmity.lightning_surge] enmity.impact_ct matches 8.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 run function enmity:items/usable/lightning_surge/raycast_end
execute if score @s enmity.raycast matches 1.. as @e[type=marker,limit=1,tag=enmity.lightning_surge] run function enmity:items/usable/lightning_surge/projectile
execute if score @s[tag=enmity.channel] enmity.raycast matches 1.. run function enmity:items/usable/lightning_surge/channel 
execute if score @s[tag=!enmity.channel] enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/lightning_surge/raycast
scoreboard players add @s enmity.raycast 1
particle dust 0 0.7 1 1 ~ ~ ~ 0 0 0 0 1 force
particle dust 0 0.7 1 1 ^ ^ ^0.16 0 0 0 0 1 force
particle dust 0 0.7 1 1 ^ ^ ^0.33 0 0 0 0 1 force
execute unless block ^ ^ ^0.5 #enmity:not_solid run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast 0
execute unless block ~ ~ ~ #enmity:not_solid run scoreboard players set @s enmity.raycast 0
execute if score @e[type=marker,limit=1,tag=enmity.lightning_surge] enmity.impact_ct matches 9.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 run function enmity:items/usable/lightning_surge/raycast_end
tp @e[type=marker,tag=enmity.lightning_surge,limit=1] ~ ~ ~
execute if score @s enmity.raycast matches 1.. as @e[type=marker,limit=1,tag=enmity.lightning_surge] run function enmity:items/usable/lightning_surge/projectile
tag @s remove enmity.channel
tag @s add enmity.current_entity
execute unless entity @e[type=!#enmity:not_living,tag=!enmity.current_entity,tag=!enmity.sentry,distance=..10,tag=!enmity.channeled] run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 run tag @e[tag=enmity.channeled] remove enmity.channeled
execute if entity @s[tag=enmity.player_targeting] if score @s[tag=!enmity.channel] enmity.raycast matches 1.. positioned ^ ^ ^0.5 facing entity @e[type=!#enmity:not_living,tag=!enmity.current_entity,tag=!enmity.projectile,limit=1,sort=nearest,distance=..10,tag=!enmity.channeled] eyes run function enmity:items/usable/lightning_surge/raycast
execute if entity @s[tag=!enmity.player_targeting] if score @s[tag=!enmity.channel] enmity.raycast matches 1.. positioned ^ ^ ^0.5 facing entity @e[type=!#enmity:not_living,type=!player,tag=!enmity.current_entity,tag=!enmity.projectile,limit=1,sort=nearest,distance=..10,tag=!enmity.channeled] eyes run function enmity:items/usable/lightning_surge/raycast
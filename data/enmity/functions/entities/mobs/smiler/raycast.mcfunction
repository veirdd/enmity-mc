scoreboard players add @s enmity.raycast 1
execute unless block ~ ~ ~ #enmity:seethrough run scoreboard players set @s enmity.raycast 0
execute unless block ^ ^ ^0.33 #enmity:seethrough run scoreboard players set @s enmity.raycast 0
execute unless block ^ ^ ^0.67 #enmity:seethrough run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 72.. run scoreboard players set @s enmity.raycast 0
execute positioned ~ ~-1.5 ~ if entity @e[type=zombie,tag=enmity.smiler,distance=..3] run tag @s add enmity.hit
execute if entity @s[tag=enmity.hit] run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^1 run function enmity:entities/mobs/smiler/raycast
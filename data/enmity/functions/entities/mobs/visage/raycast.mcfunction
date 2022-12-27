scoreboard players add @s enmity.raycast 1
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast -1
execute unless block ~ ~ ~ #enmity:enemy_firethrough run scoreboard players set @s enmity.raycast -1
execute positioned ~ ~-1 ~ if entity @a[distance=..1] run tag @s add enmity.has_view
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:entities/mobs/visage/raycast
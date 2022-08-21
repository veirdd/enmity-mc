scoreboard players add @s enmity.raycast 1
tp @s ~ ~ ~ facing ^ ^ ^1
execute if score @s enmity.raycast matches 48.. run scoreboard players set @s enmity.raycast 0
execute unless block ~ ~ ~ #enmity:unmineable run function enmity:items/usable/ethereal_excavator/dig
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.25 run function enmity:items/usable/ethereal_excavator/raycast
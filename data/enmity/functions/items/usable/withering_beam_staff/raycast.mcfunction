scoreboard players add @s enmity.raycast 1
particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force
particle dust 1 1 1 1 ^ ^ ^0.25 0 0 0 0 1 force
tp @s ~ ~ ~ facing ^ ^ ^1
function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 64.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 as @p[tag=enmity.this] at @s anchored eyes run tp @e[type=marker,tag=enmity.new,limit=1] ^ ^ ^0.5
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/withering_beam_staff/raycast
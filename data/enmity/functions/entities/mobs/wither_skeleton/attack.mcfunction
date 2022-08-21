execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] eyes
function enmity:items/usable/withered_scepter/use
scoreboard players set @s enmity.cooldown 6
execute if score %difficulty enmity.value matches 1 run scoreboard players add @s enmity.cooldown 4
tag @s remove enmity.has_view
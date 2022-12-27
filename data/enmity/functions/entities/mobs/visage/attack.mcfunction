execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] eyes
execute at @s anchored eyes run function enmity:items/usable/withered_scepter/use
scoreboard players set @s enmity.cooldown 7
execute if score %difficulty enmity.value matches 1 run scoreboard players add @s enmity.cooldown 4
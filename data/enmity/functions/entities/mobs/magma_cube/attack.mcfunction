tp @s ~ ~ ~ facing entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] feet
function enmity:items/usable/flare_bolt/use
scoreboard players set @s enmity.cooldown 8
execute if score %difficulty enmity.value matches 1 run scoreboard players add @s enmity.cooldown 4
tag @s remove enmity.has_view
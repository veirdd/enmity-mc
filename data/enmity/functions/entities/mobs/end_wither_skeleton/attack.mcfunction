tp @s ~ ~ ~ facing entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] feet
function enmity:items/usable/soul_scepter/use
scoreboard players set @s enmity.cooldown 5
execute if score %difficulty enmity.value matches 1 run scoreboard players add @s enmity.cooldown 3
tag @s remove enmity.has_view
data merge entity @s {wasOnGround:0b}
data merge entity @s {OnGround:1b}
tp @s ~ ~ ~ facing entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] feet
function enmity:items/usable/flare_bolt/use
scoreboard players set @s enmity.cooldown 4
execute if score %difficulty enmity.value matches 1 run scoreboard players add @s enmity.cooldown 2
tag @s remove enmity.has_view
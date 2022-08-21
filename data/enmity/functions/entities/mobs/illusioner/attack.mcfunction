tag @s add enmity.end_wither_skeleton
function enmity:items/usable/soul_scepter/use
tag @s remove enmity.end_wither_skeleton
scoreboard players set @s enmity.cooldown 5
execute if score %difficulty enmity.value matches 1 run scoreboard players add @s enmity.cooldown 2
tag @s remove enmity.has_view
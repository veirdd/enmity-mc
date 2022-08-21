tag @s add enmity.this
execute as @e[type=marker,tag=enmity.waystone_teleporter] if score @s enmity.waystone = @p[tag=enmity.this] enmity.waystone_tp run tag @s add enmity.this
execute unless entity @e[type=marker,tag=enmity.this] run scoreboard players enable @s enmity.waystone_tp
execute if entity @e[type=marker,tag=enmity.this] run function enmity:blocks/functions/waystone/teleport
tag @e[type=marker,tag=enmity.this] remove enmity.this
tag @s remove enmity.this
tp ^ ^ ^0.2
tag @s remove enmity.this
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute if score @s enmity.rotation matches ..-1 positioned ~ ~0.41 ~ run function enmity:utility/solid_detection/check
execute if score @s enmity.rotation matches ..-1 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/y_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches 1.. positioned ~ ~-0.41 ~ run function enmity:utility/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches 1.. if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/y_bounce
tag @s remove enmity.in_solid
execute store result score @s[tag=!enmity.bounced] enmity.rotation run data get entity @s Rotation[0]
execute if score @s[tag=!enmity.bounced] enmity.rotation matches ..-1 positioned ~0.41 ~ ~ run function enmity:utility/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches ..-1 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/x_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -1.. positioned ~-0.41 ~ ~ run function enmity:utility/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -1.. if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/x_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -91..89 positioned ~ ~ ~0.41 run function enmity:utility/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -91..89 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/z_bounce
tag @s remove enmity.in_solid
execute unless score @s[tag=!enmity.bounced] enmity.rotation matches -90..90 positioned ~ ~ ~-0.41 run function enmity:utility/solid_detection/check
execute unless score @s[tag=!enmity.bounced] enmity.rotation matches -90..90 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/z_bounce
tag @s remove enmity.in_solid
tag @s remove enmity.bounced
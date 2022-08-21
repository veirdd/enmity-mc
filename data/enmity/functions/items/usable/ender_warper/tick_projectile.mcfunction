tag @s add enmity.this
particle electric_spark ~ ~ ~ 0 0 0 0 1 force
particle electric_spark ^ ^ ^0.4 0 0 0 0 1 force
particle electric_spark ^ ^ ^0.8 0 0 0 0 1 force
particle electric_spark ^ ^ ^1.2 0 0 0 0 1 force
particle electric_spark ^ ^ ^1.6 0 0 0 0 1 force
particle electric_spark ^ ^ ^2 0 0 0 0 1 force
particle electric_spark ^ ^ ^2.4 0 0 0 0 1 force
particle electric_spark ^ ^ ^2.8 0 0 0 0 1 force
tp @s ^ ^ ^3.2
execute at @s if score @s enmity.age matches 5.. if block ~0.3 ~-0.9 ~0.3 #enmity:not_solid if block ~-0.3 ~-0.9 ~0.3 #enmity:not_solid if block ~0.3 ~-0.9 ~-0.3 #enmity:not_solid if block ~-0.3 ~-0.9 ~-0.3 #enmity:not_solid if block ~0.3 ~0.9 ~0.3 #enmity:not_solid if block ~-0.3 ~0.9 ~0.3 #enmity:not_solid if block ~0.3 ~0.9 ~-0.3 #enmity:not_solid if block ~-0.3 ~0.9 ~-0.3 #enmity:not_solid run function enmity:items/usable/ender_warper/teleport
execute at @s positioned ^ ^ ^1.6 if score @s enmity.age matches 5.. if block ~0.3 ~-0.9 ~0.3 #enmity:not_solid if block ~-0.3 ~-0.9 ~0.3 #enmity:not_solid if block ~0.3 ~-0.9 ~-0.3 #enmity:not_solid if block ~-0.3 ~-0.9 ~-0.3 #enmity:not_solid if block ~0.3 ~0.9 ~0.3 #enmity:not_solid if block ~-0.3 ~0.9 ~0.3 #enmity:not_solid if block ~0.3 ~0.9 ~-0.3 #enmity:not_solid if block ~-0.3 ~0.9 ~-0.3 #enmity:not_solid run function enmity:items/usable/ender_warper/teleport
execute if score @s enmity.age matches 5.. run kill @s
tag @s remove enmity.this
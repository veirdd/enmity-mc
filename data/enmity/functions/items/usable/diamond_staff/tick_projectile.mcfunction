tag @s add enmity.this
function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.35 run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/diamond_staff/die_projectile
tp @s ^ ^ ^0.7
particle dust 0 0.8 1 1 ~ ~ ~ 0.025 0.025 0.025 0 3 force
particle dust 0 0.8 1 1 ^ ^ ^0.35 0.025 0.025 0.025 0 3 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.23 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.47 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/diamond_staff/damage_projectile
execute if score @s enmity.age matches 120.. run kill @s
execute if score @s enmity.impact_ct matches 2.. run function enmity:items/usable/diamond_staff/die_projectile
tag @s remove enmity.this
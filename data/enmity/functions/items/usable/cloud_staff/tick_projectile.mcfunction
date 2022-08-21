tp @s ^ ^ ^0.6
tag @s add enmity.this
execute if entity @s[tag=!enmity.red] run particle dust 0 0 1 0.4 ~ ~ ~ 0.02 0.02 0.02 0 4 force
execute if entity @s[tag=!enmity.red] run particle dust 0 0 1 0.4 ^ ^ ^0.2 0.02 0.02 0.02 0 4 force
execute if entity @s[tag=!enmity.red] run particle dust 0 0 1 0.4 ^ ^ ^0.4 0.02 0.02 0.02 0 4 force
execute if entity @s[tag=enmity.red] run particle dust 0.8 0 0 0.4 ~ ~ ~ 0.02 0.02 0.02 0 4 force
execute if entity @s[tag=enmity.red] run particle dust 0.8 0 0 0.4 ^ ^ ^0.2 0.02 0.02 0.02 0 4 force
execute if entity @s[tag=enmity.red] run particle dust 0.8 0 0 0.4 ^ ^ ^0.4 0.02 0.02 0.02 0 4 force
function enmity:utility/solid_detection/check
execute positioned ^ ^ ^0.4 run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/cloud_staff/die_projectile
execute if entity @s[tag=!enmity.red] positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @s[tag=enmity.red] positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/cloud_staff/damage_projectile
execute if score @s enmity.age matches 60.. run kill @s
execute if score @s enmity.impact_ct matches 3.. run function enmity:items/usable/cloud_staff/die_projectile
tag @s remove enmity.this
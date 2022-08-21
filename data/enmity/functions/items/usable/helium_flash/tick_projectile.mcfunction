tag @s add enmity.this
function enmity:utility/solid_detection/check
execute positioned ^ ^ ^0.4 run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/helium_flash/impact_projectile
tp @s ^ ^ ^0.8
particle dust 1 0.8 0.62 1 ~ ~ ~ 0.075 0.075 0.075 0 4 force
particle dust 1 0.8 0.62 1 ^ ^ ^0.4 0.075 0.075 0.075 0 4 force
particle flame ~ ~ ~ 0.075 0.075 0.075 0 1 force
particle flame ^ ^ ^0.4 0.075 0.075 0.075 0 1 force
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.27 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.53 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/helium_flash/impact_projectile
execute if score @s enmity.age matches 50.. run function enmity:items/usable/helium_flash/impact_projectile
tag @s remove enmity.this
tag @s add enmity.this
function enmity:utility/solid_detection/check
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ^ ^ ^0.17 positioned ~-0.5 ~-0.5 ~-0.5 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ^ ^ ^0.33 positioned ~-0.5 ~-0.5 ~-0.5 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/dust_storm/damage
tag @s remove enmity.this
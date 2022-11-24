tag @s add enmity.this
tp @s ^ ^ ^0.6 facing ^ ^-0.02 ^1.2
particle falling_dust white_concrete ~ ~ ~ 0 0 0 0 1 force
particle falling_dust white_concrete ^ ^ ^0.3 0 0 0 0 1 force
function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.3 run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/web_slinger/die_projectile
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^0.3 ^ positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/web_slinger/damage_projectile
execute if score @s enmity.age matches 20.. if predicate enmity:random/random_0.1 run kill @s
execute if score @s enmity.age matches 30.. run kill @s
tag @s remove enmity.this
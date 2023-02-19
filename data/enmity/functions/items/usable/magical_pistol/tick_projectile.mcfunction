tag @s add enmity.this
function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.25 run function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.5 run function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.75 run function enmity:misc/solid_detection/check
execute positioned ^ ^ ^1 run function enmity:misc/solid_detection/check
execute positioned ^ ^ ^1.25 run function enmity:misc/solid_detection/check
execute positioned ^ ^ ^1.5 run function enmity:misc/solid_detection/check
execute positioned ^ ^ ^1.75 run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/magical_pistol/die_projectile
tp @s ^ ^ ^2
particle dust 0 0.8 1 0.5 ~ ~ ~ 0.025 0.025 0.025 0 2 force
particle dust 0 0.8 1 0.5 ^ ^ ^0.4 0.025 0.025 0.025 0 2 force
particle dust 0 0.8 1 0.5 ^ ^ ^0.8 0.025 0.025 0.025 0 2 force
particle dust 0 0.8 1 0.5 ^ ^ ^1.2 0.025 0.025 0.025 0 2 force
particle dust 0 0.8 1 0.5 ^ ^ ^1.6 0.025 0.025 0.025 0 2 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.5 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.75 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^1.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^1.5 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^1.75 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/magical_pistol/damage_projectile
execute if score @s enmity.age matches 80.. run kill @s
tag @s remove enmity.this
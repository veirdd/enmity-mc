scoreboard players add @s enmity.raycast 1
particle dust 0 0 0 2 ~ ~ ~ 0 0 0 0 1 force
particle dust 0 0 0 2 ^ ^ ^0.1 0 0 0 0 1 force
particle dust 0 0 0 2 ^ ^ ^0.2 0 0 0 0 1 force
particle dust 0 0 0 2 ^ ^ ^0.3 0 0 0 0 1 force
particle dust 0 0 0 2 ^ ^ ^0.4 0 0 0 0 1 force
tp @s ~ ~ ~ facing ^ ^ ^1
function enmity:misc/solid_detection/check
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.17 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.33 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/withering_beam_staff/damage
execute if score @s enmity.raycast matches 64.. run scoreboard players set @s enmity.raycast 0
execute if entity @s[tag=enmity.in_solid] run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/withering_beam_staff/raycast2